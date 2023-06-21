import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:faheem_s_application/widgets/custom_bottom_bar.dart';
import 'package:faheem_s_application/presentation/profile_screen/models/profile_model.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(ProfileState initialState) : super(initialState) {
    on<ProfileInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileInitialEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(
        fullnameoneController: TextEditingController(),
        dateofbirthController: TextEditingController(),
        phoneController: TextEditingController(),
        emailoneController: TextEditingController(),
        statelayerController: TextEditingController(),
        statelayeroneController: TextEditingController(),
        statelayertwoController: TextEditingController(),
        statelayerController1: TextEditingController(),
        statelayerfourController: TextEditingController(),
        statelayerfiveController: TextEditingController(),
        statelayersixController: TextEditingController(),
        statelayerController2: TextEditingController()));
  }
}
