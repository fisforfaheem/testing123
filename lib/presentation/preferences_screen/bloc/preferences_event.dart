// ignore_for_file: must_be_immutable

part of 'preferences_bloc.dart';

@immutable
abstract class PreferencesEvent extends Equatable {}

class PreferencesInitialEvent extends PreferencesEvent {
  @override
  List<Object?> get props => [];
}
