// ignore_for_file: must_be_immutable

part of 'enter_passcode_bloc.dart';

class EnterPasscodeState extends Equatable {
  EnterPasscodeState({
    this.verifiedController,
    this.otpController,
    this.enterPasscodeModelObj,
  });

  TextEditingController? verifiedController;

  TextEditingController? otpController;

  EnterPasscodeModel? enterPasscodeModelObj;

  @override
  List<Object?> get props => [
        verifiedController,
        otpController,
        enterPasscodeModelObj,
      ];
  EnterPasscodeState copyWith({
    TextEditingController? verifiedController,
    TextEditingController? otpController,
    EnterPasscodeModel? enterPasscodeModelObj,
  }) {
    return EnterPasscodeState(
      verifiedController: verifiedController ?? this.verifiedController,
      otpController: otpController ?? this.otpController,
      enterPasscodeModelObj:
          enterPasscodeModelObj ?? this.enterPasscodeModelObj,
    );
  }
}
