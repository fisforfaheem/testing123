// ignore_for_file: must_be_immutable

part of 'enter_passcode_one_bloc.dart';

class EnterPasscodeOneState extends Equatable {
  EnterPasscodeOneState({
    this.otpController,
    this.enterPasscodeOneModelObj,
  });

  TextEditingController? otpController;

  EnterPasscodeOneModel? enterPasscodeOneModelObj;

  @override
  List<Object?> get props => [
        otpController,
        enterPasscodeOneModelObj,
      ];
  EnterPasscodeOneState copyWith({
    TextEditingController? otpController,
    EnterPasscodeOneModel? enterPasscodeOneModelObj,
  }) {
    return EnterPasscodeOneState(
      otpController: otpController ?? this.otpController,
      enterPasscodeOneModelObj:
          enterPasscodeOneModelObj ?? this.enterPasscodeOneModelObj,
    );
  }
}
