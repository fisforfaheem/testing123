import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:faheem_s_application/presentation/enter_passcode_two_screen/models/enter_passcode_two_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'enter_passcode_two_event.dart';
part 'enter_passcode_two_state.dart';

class EnterPasscodeTwoBloc
    extends Bloc<EnterPasscodeTwoEvent, EnterPasscodeTwoState>
    with CodeAutoFill {
  EnterPasscodeTwoBloc(EnterPasscodeTwoState initialState)
      : super(initialState) {
    on<EnterPasscodeTwoInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<EnterPasscodeTwoState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    EnterPasscodeTwoInitialEvent event,
    Emitter<EnterPasscodeTwoState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
