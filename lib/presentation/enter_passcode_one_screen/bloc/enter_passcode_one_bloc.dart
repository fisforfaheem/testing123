import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:faheem_s_application/presentation/enter_passcode_one_screen/models/enter_passcode_one_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'enter_passcode_one_event.dart';
part 'enter_passcode_one_state.dart';

class EnterPasscodeOneBloc
    extends Bloc<EnterPasscodeOneEvent, EnterPasscodeOneState>
    with CodeAutoFill {
  EnterPasscodeOneBloc(EnterPasscodeOneState initialState)
      : super(initialState) {
    on<EnterPasscodeOneInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<EnterPasscodeOneState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    EnterPasscodeOneInitialEvent event,
    Emitter<EnterPasscodeOneState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
