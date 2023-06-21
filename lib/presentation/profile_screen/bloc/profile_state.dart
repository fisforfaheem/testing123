// ignore_for_file: must_be_immutable

part of 'profile_bloc.dart';

class ProfileState extends Equatable {
  ProfileState({
    this.fullnameoneController,
    this.dateofbirthController,
    this.phoneController,
    this.emailoneController,
    this.statelayerController,
    this.statelayeroneController,
    this.statelayertwoController,
    this.statelayerController1,
    this.statelayerfourController,
    this.statelayerfiveController,
    this.statelayersixController,
    this.statelayerController2,
    this.profileModelObj,
  });

  TextEditingController? fullnameoneController;

  TextEditingController? dateofbirthController;

  TextEditingController? phoneController;

  TextEditingController? emailoneController;

  TextEditingController? statelayerController;

  TextEditingController? statelayeroneController;

  TextEditingController? statelayertwoController;

  TextEditingController? statelayerController1;

  TextEditingController? statelayerfourController;

  TextEditingController? statelayerfiveController;

  TextEditingController? statelayersixController;

  TextEditingController? statelayerController2;

  ProfileModel? profileModelObj;

  @override
  List<Object?> get props => [
        fullnameoneController,
        dateofbirthController,
        phoneController,
        emailoneController,
        statelayerController,
        statelayeroneController,
        statelayertwoController,
        statelayerController1,
        statelayerfourController,
        statelayerfiveController,
        statelayersixController,
        statelayerController2,
        profileModelObj,
      ];
  ProfileState copyWith({
    TextEditingController? fullnameoneController,
    TextEditingController? dateofbirthController,
    TextEditingController? phoneController,
    TextEditingController? emailoneController,
    TextEditingController? statelayerController,
    TextEditingController? statelayeroneController,
    TextEditingController? statelayertwoController,
    TextEditingController? statelayerController1,
    TextEditingController? statelayerfourController,
    TextEditingController? statelayerfiveController,
    TextEditingController? statelayersixController,
    TextEditingController? statelayerController2,
    ProfileModel? profileModelObj,
  }) {
    return ProfileState(
      fullnameoneController:
          fullnameoneController ?? this.fullnameoneController,
      dateofbirthController:
          dateofbirthController ?? this.dateofbirthController,
      phoneController: phoneController ?? this.phoneController,
      emailoneController: emailoneController ?? this.emailoneController,
      statelayerController: statelayerController ?? this.statelayerController,
      statelayeroneController:
          statelayeroneController ?? this.statelayeroneController,
      statelayertwoController:
          statelayertwoController ?? this.statelayertwoController,
      statelayerController1:
          statelayerController1 ?? this.statelayerController1,
      statelayerfourController:
          statelayerfourController ?? this.statelayerfourController,
      statelayerfiveController:
          statelayerfiveController ?? this.statelayerfiveController,
      statelayersixController:
          statelayersixController ?? this.statelayersixController,
      statelayerController2:
          statelayerController2 ?? this.statelayerController2,
      profileModelObj: profileModelObj ?? this.profileModelObj,
    );
  }
}
