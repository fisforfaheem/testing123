import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:faheem_s_application/widgets/custom_bottom_bar.dart';
import 'package:faheem_s_application/presentation/settings_one_screen/models/settings_one_model.dart';
part 'settings_one_event.dart';
part 'settings_one_state.dart';

class SettingsOneBloc extends Bloc<SettingsOneEvent, SettingsOneState> {
  SettingsOneBloc(SettingsOneState initialState) : super(initialState) {
    on<SettingsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SettingsOneInitialEvent event,
    Emitter<SettingsOneState> emit,
  ) async {}
}
