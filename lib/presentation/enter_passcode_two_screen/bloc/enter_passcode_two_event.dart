// ignore_for_file: must_be_immutable

part of 'enter_passcode_two_bloc.dart';

@immutable
abstract class EnterPasscodeTwoEvent extends Equatable {}

class EnterPasscodeTwoInitialEvent extends EnterPasscodeTwoEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends EnterPasscodeTwoEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
