import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:faheem_s_application/presentation/errpr_404_screen/models/errpr_404_model.dart';
part 'errpr_404_event.dart';
part 'errpr_404_state.dart';

class Errpr404Bloc extends Bloc<Errpr404Event, Errpr404State> {
  Errpr404Bloc(Errpr404State initialState) : super(initialState) {
    on<Errpr404InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Errpr404InitialEvent event,
    Emitter<Errpr404State> emit,
  ) async {}
}
