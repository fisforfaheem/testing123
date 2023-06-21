// ignore_for_file: must_be_immutable

part of 'enter_passcode_bloc.dart';

@immutable
abstract class EnterPasscodeEvent extends Equatable {}

class EnterPasscodeInitialEvent extends EnterPasscodeEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends EnterPasscodeEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
