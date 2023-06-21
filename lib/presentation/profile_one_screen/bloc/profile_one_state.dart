// ignore_for_file: must_be_immutable

part of 'profile_one_bloc.dart';

class ProfileOneState extends Equatable {
  ProfileOneState({
    this.frametwentynineController,
    this.frametwentysixController,
    this.countryController,
    this.cityController,
    this.profileOneModelObj,
  });

  TextEditingController? frametwentynineController;

  TextEditingController? frametwentysixController;

  TextEditingController? countryController;

  TextEditingController? cityController;

  ProfileOneModel? profileOneModelObj;

  @override
  List<Object?> get props => [
        frametwentynineController,
        frametwentysixController,
        countryController,
        cityController,
        profileOneModelObj,
      ];
  ProfileOneState copyWith({
    TextEditingController? frametwentynineController,
    TextEditingController? frametwentysixController,
    TextEditingController? countryController,
    TextEditingController? cityController,
    ProfileOneModel? profileOneModelObj,
  }) {
    return ProfileOneState(
      frametwentynineController:
          frametwentynineController ?? this.frametwentynineController,
      frametwentysixController:
          frametwentysixController ?? this.frametwentysixController,
      countryController: countryController ?? this.countryController,
      cityController: cityController ?? this.cityController,
      profileOneModelObj: profileOneModelObj ?? this.profileOneModelObj,
    );
  }
}
