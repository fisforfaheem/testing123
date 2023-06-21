import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:faheem_s_application/presentation/score_screen/models/score_model.dart';
part 'score_event.dart';
part 'score_state.dart';

class ScoreBloc extends Bloc<ScoreEvent, ScoreState> {
  ScoreBloc(ScoreState initialState) : super(initialState) {
    on<ScoreInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<ScoreState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _onInitialize(
    ScoreInitialEvent event,
    Emitter<ScoreState> emit,
  ) async {
    emit(state.copyWith(
        bodylanguageController: TextEditingController(),
        bodylanguageController1: TextEditingController(),
        bodylanguageController2: TextEditingController(),
        bodylanguageController3: TextEditingController(),
        bodylanguageController4: TextEditingController(),
        isCheckbox: false));
  }
}
