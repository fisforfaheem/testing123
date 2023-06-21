import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:faheem_s_application/presentation/profile_one_screen/models/profile_one_model.dart';
part 'profile_one_event.dart';
part 'profile_one_state.dart';

class ProfileOneBloc extends Bloc<ProfileOneEvent, ProfileOneState> {
  ProfileOneBloc(ProfileOneState initialState) : super(initialState) {
    on<ProfileOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileOneInitialEvent event,
    Emitter<ProfileOneState> emit,
  ) async {
    emit(state.copyWith(
        frametwentynineController: TextEditingController(),
        frametwentysixController: TextEditingController(),
        countryController: TextEditingController(),
        cityController: TextEditingController()));
  }
}
