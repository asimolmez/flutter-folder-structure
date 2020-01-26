import "package:flutter/foundation.dart";
import 'package:flutter_on_the_go/redux/home/state.dart';

@immutable
class AppState {
  final HomeState homeState;

  const AppState({
    @required this.homeState,
  });

  factory AppState.initial() {
    return AppState(homeState: HomeState.initial());
  }

  AppState copyWith({HomeState homeState}) {
    return AppState(homeState: homeState ?? this.homeState);
  }
}
