// ignore_for_file: must_be_immutable

part of 'score_one_bloc.dart';

class ScoreOneState extends Equatable {
  ScoreOneState({this.scoreOneModelObj});

  ScoreOneModel? scoreOneModelObj;

  @override
  List<Object?> get props => [
        scoreOneModelObj,
      ];
  ScoreOneState copyWith({ScoreOneModel? scoreOneModelObj}) {
    return ScoreOneState(
      scoreOneModelObj: scoreOneModelObj ?? this.scoreOneModelObj,
    );
  }
}
