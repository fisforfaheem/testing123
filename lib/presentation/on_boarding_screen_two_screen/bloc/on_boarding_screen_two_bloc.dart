import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:faheem_s_application/presentation/on_boarding_screen_two_screen/models/on_boarding_screen_two_model.dart';
part 'on_boarding_screen_two_event.dart';
part 'on_boarding_screen_two_state.dart';

class OnBoardingScreenTwoBloc
    extends Bloc<OnBoardingScreenTwoEvent, OnBoardingScreenTwoState> {
  OnBoardingScreenTwoBloc(OnBoardingScreenTwoState initialState)
      : super(initialState) {
    on<OnBoardingScreenTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnBoardingScreenTwoInitialEvent event,
    Emitter<OnBoardingScreenTwoState> emit,
  ) async {}
}
