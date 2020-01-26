import 'package:flutter/foundation.dart';
import 'package:flutter_on_the_go/redux/app_state.dart';
import 'package:flutter_on_the_go/redux/home/actions.dart';
import 'package:redux/redux.dart';

class HomeViewModel {
  final Function getFactOfNumber;
  final String fact;

  const HomeViewModel({
    @required this.getFactOfNumber,
    @required this.fact,
  });

  static HomeViewModel fromStore(Store<AppState> store) {
    return HomeViewModel(
      getFactOfNumber: (int number) =>
          store.dispatch(getFactOfNumberAction(number)),
      fact: store.state.homeState.factOfNumber ?? "",
    );
  }
}
