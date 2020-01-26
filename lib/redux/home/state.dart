import 'package:flutter/foundation.dart';

@immutable
class HomeState {
  final bool isProcessing;
  final String factOfNumber;

  const HomeState({this.isProcessing, this.factOfNumber});

  HomeState copyWith({
    bool isProcessing,
    String factOfNumber,
  }) {
    return HomeState(
      isProcessing: isProcessing ?? this.isProcessing,
      factOfNumber: factOfNumber ?? this.factOfNumber,
    );
  }

  factory HomeState.initial() {
    return const HomeState(isProcessing: false, factOfNumber: null);
  }
}
