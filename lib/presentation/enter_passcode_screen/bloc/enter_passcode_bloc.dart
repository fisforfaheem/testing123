import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:faheem_s_application/presentation/enter_passcode_screen/models/enter_passcode_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'enter_passcode_event.dart';
part 'enter_passcode_state.dart';

class EnterPasscodeBloc extends Bloc<EnterPasscodeEvent, EnterPasscodeState>
    with CodeAutoFill {
  EnterPasscodeBloc(EnterPasscodeState initialState) : super(initialState) {
    on<EnterPasscodeInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<EnterPasscodeState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    EnterPasscodeInitialEvent event,
    Emitter<EnterPasscodeState> emit,
  ) async {
    emit(state.copyWith(
        verifiedController: TextEditingController(),
        otpController: TextEditingController()));
    listenForCode();
  }
}
