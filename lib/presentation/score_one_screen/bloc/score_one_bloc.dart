import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:faheem_s_application/widgets/custom_bottom_bar.dart';
import 'package:faheem_s_application/presentation/score_one_screen/models/score_one_model.dart';
part 'score_one_event.dart';
part 'score_one_state.dart';

class ScoreOneBloc extends Bloc<ScoreOneEvent, ScoreOneState> {
  ScoreOneBloc(ScoreOneState initialState) : super(initialState) {
    on<ScoreOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ScoreOneInitialEvent event,
    Emitter<ScoreOneState> emit,
  ) async {}
}
