import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:faheem_s_application/presentation/interview_screen_two_screen/models/interview_screen_two_model.dart';
part 'interview_screen_two_event.dart';
part 'interview_screen_two_state.dart';

class InterviewScreenTwoBloc
    extends Bloc<InterviewScreenTwoEvent, InterviewScreenTwoState> {
  InterviewScreenTwoBloc(InterviewScreenTwoState initialState)
      : super(initialState) {
    on<InterviewScreenTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InterviewScreenTwoInitialEvent event,
    Emitter<InterviewScreenTwoState> emit,
  ) async {}
}
