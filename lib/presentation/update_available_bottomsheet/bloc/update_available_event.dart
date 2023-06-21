// ignore_for_file: must_be_immutable

part of 'update_available_bloc.dart';

@immutable
abstract class UpdateAvailableEvent extends Equatable {}

class UpdateAvailableInitialEvent extends UpdateAvailableEvent {
  @override
  List<Object?> get props => [];
}
