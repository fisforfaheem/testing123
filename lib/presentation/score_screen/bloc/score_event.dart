// ignore_for_file: must_be_immutable

part of 'score_bloc.dart';

@immutable
abstract class ScoreEvent extends Equatable {}

class ScoreInitialEvent extends ScoreEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends ScoreEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
