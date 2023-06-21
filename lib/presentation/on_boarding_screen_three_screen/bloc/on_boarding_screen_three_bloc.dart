import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:faheem_s_application/presentation/on_boarding_screen_three_screen/models/on_boarding_screen_three_model.dart';
part 'on_boarding_screen_three_event.dart';
part 'on_boarding_screen_three_state.dart';

class OnBoardingScreenThreeBloc
    extends Bloc<OnBoardingScreenThreeEvent, OnBoardingScreenThreeState> {
  OnBoardingScreenThreeBloc(OnBoardingScreenThreeState initialState)
      : super(initialState) {
    on<OnBoardingScreenThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnBoardingScreenThreeInitialEvent event,
    Emitter<OnBoardingScreenThreeState> emit,
  ) async {}
}
