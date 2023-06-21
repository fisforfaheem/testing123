// ignore_for_file: must_be_immutable

part of 'enter_passcode_two_bloc.dart';

class EnterPasscodeTwoState extends Equatable {
  EnterPasscodeTwoState({
    this.otpController,
    this.enterPasscodeTwoModelObj,
  });

  TextEditingController? otpController;

  EnterPasscodeTwoModel? enterPasscodeTwoModelObj;

  @override
  List<Object?> get props => [
        otpController,
        enterPasscodeTwoModelObj,
      ];
  EnterPasscodeTwoState copyWith({
    TextEditingController? otpController,
    EnterPasscodeTwoModel? enterPasscodeTwoModelObj,
  }) {
    return EnterPasscodeTwoState(
      otpController: otpController ?? this.otpController,
      enterPasscodeTwoModelObj:
          enterPasscodeTwoModelObj ?? this.enterPasscodeTwoModelObj,
    );
  }
}
