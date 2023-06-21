import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:faheem_s_application/presentation/update_available_bottomsheet/models/update_available_model.dart';
part 'update_available_event.dart';
part 'update_available_state.dart';

class UpdateAvailableBloc
    extends Bloc<UpdateAvailableEvent, UpdateAvailableState> {
  UpdateAvailableBloc(UpdateAvailableState initialState) : super(initialState) {
    on<UpdateAvailableInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UpdateAvailableInitialEvent event,
    Emitter<UpdateAvailableState> emit,
  ) async {}
}
