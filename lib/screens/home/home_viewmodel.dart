import 'package:flutter/foundation.dart';
import 'package:flutter_folder_structure/redux/app_state.dart';
import 'package:flutter_folder_structure/redux/home/actions.dart';
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
