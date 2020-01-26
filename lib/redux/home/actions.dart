
import 'package:flutter_on_the_go/config/ioc_container.dart';
import 'package:flutter_on_the_go/models/api/request/get_fact_of_number_request_datamodel.dart';
import 'package:flutter_on_the_go/redux/home/factory.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import '../app_state.dart';

class GetFactOfNumberRequest {}

class GetFactOfNumberSuccess {
  final String fact;

  GetFactOfNumberSuccess(this.fact);
}

class GetFactOfNumberFailure {}

ThunkAction<AppState> getFactOfNumberAction(int number) {
  return (Store<AppState> store) async {
    store.dispatch(GetFactOfNumberRequest());

    final request = GetFactOfNumberRequestModel(number);
    final factory = container.resolve<HomeFactory>();

    final res = await factory.getFactOfNumber(request);
    store.dispatch(GetFactOfNumberSuccess(res.fact));
  };
}
