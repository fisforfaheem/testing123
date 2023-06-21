import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:faheem_s_application/presentation/on_boarding_screen_one_screen/models/on_boarding_screen_one_model.dart';
part 'on_boarding_screen_one_event.dart';
part 'on_boarding_screen_one_state.dart';

class OnBoardingScreenOneBloc
    extends Bloc<OnBoardingScreenOneEvent, OnBoardingScreenOneState> {
  OnBoardingScreenOneBloc(OnBoardingScreenOneState initialState)
      : super(initialState) {
    on<OnBoardingScreenOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnBoardingScreenOneInitialEvent event,
    Emitter<OnBoardingScreenOneState> emit,
  ) async {}
}
