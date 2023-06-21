// ignore_for_file: must_be_immutable

part of 'share_bloc.dart';

@immutable
abstract class ShareEvent extends Equatable {}

class ShareInitialEvent extends ShareEvent {
  @override
  List<Object?> get props => [];
}
