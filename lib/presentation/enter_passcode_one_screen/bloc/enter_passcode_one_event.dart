// ignore_for_file: must_be_immutable

part of 'enter_passcode_one_bloc.dart';

@immutable
abstract class EnterPasscodeOneEvent extends Equatable {}

class EnterPasscodeOneInitialEvent extends EnterPasscodeOneEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends EnterPasscodeOneEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
