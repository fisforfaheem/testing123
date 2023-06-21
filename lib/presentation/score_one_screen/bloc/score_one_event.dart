// ignore_for_file: must_be_immutable

part of 'score_one_bloc.dart';

@immutable
abstract class ScoreOneEvent extends Equatable {}

class ScoreOneInitialEvent extends ScoreOneEvent {
  @override
  List<Object?> get props => [];
}
