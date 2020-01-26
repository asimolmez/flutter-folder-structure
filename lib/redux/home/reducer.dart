import 'package:flutter_on_the_go/redux/home/actions.dart';
import 'package:flutter_on_the_go/redux/home/state.dart';
import 'package:redux/redux.dart';

final Reducer<HomeState> homeReducer = combineReducers<HomeState>([
  TypedReducer<HomeState, GetFactOfNumberRequest>(_getFactOfNumberRequest),
  TypedReducer<HomeState, GetFactOfNumberSuccess>(_getFactOfNumberSuccess),
]);

HomeState _getFactOfNumberRequest(
  HomeState state,
  GetFactOfNumberRequest action,
) {
  return state.copyWith(isProcessing: true);
}

HomeState _getFactOfNumberSuccess(
  HomeState state,
  GetFactOfNumberSuccess action,
) {
  return state.copyWith(isProcessing: true, factOfNumber: action.fact);
}
