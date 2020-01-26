
import 'package:flutter_on_the_go/redux/home/reducer.dart';

import "app_state.dart";

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    homeState: homeReducer(state.homeState, action),
  );
}
