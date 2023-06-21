import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:faheem_s_application/presentation/splash_screen_one_screen/models/splash_screen_one_model.dart';
part 'splash_screen_one_event.dart';
part 'splash_screen_one_state.dart';

class SplashScreenOneBloc
    extends Bloc<SplashScreenOneEvent, SplashScreenOneState> {
  SplashScreenOneBloc(SplashScreenOneState initialState) : super(initialState) {
    on<SplashScreenOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplashScreenOneInitialEvent event,
    Emitter<SplashScreenOneState> emit,
  ) async {}
}
