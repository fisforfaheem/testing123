import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:faheem_s_application/presentation/preferences_screen/models/preferences_model.dart';
part 'preferences_event.dart';
part 'preferences_state.dart';

class PreferencesBloc extends Bloc<PreferencesEvent, PreferencesState> {
  PreferencesBloc(PreferencesState initialState) : super(initialState) {
    on<PreferencesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PreferencesInitialEvent event,
    Emitter<PreferencesState> emit,
  ) async {}
}
