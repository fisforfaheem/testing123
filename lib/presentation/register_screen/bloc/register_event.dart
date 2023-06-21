// ignore_for_file: must_be_immutable

part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent extends Equatable {}

class RegisterInitialEvent extends RegisterEvent {
  @override
  List<Object?> get props => [];
}
