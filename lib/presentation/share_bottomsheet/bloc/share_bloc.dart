import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:faheem_s_application/presentation/share_bottomsheet/models/share_model.dart';
part 'share_event.dart';
part 'share_state.dart';

class ShareBloc extends Bloc<ShareEvent, ShareState> {
  ShareBloc(ShareState initialState) : super(initialState) {
    on<ShareInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShareInitialEvent event,
    Emitter<ShareState> emit,
  ) async {}
}
