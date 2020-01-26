import "package:redux/redux.dart";
import 'package:redux_thunk/redux_thunk.dart';

import "app_reducer.dart";
import "app_state.dart";

Store<AppState> createStore() {
  return Store<AppState>(
    appReducer,
    initialState: AppState.initial(),
    middleware: [thunkMiddleware],
  );
}
