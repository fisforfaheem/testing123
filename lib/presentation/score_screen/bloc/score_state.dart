// ignore_for_file: must_be_immutable

part of 'score_bloc.dart';

class ScoreState extends Equatable {
  ScoreState({
    this.bodylanguageController,
    this.bodylanguageController1,
    this.bodylanguageController2,
    this.bodylanguageController3,
    this.bodylanguageController4,
    this.isCheckbox = false,
    this.scoreModelObj,
  });

  TextEditingController? bodylanguageController;

  TextEditingController? bodylanguageController1;

  TextEditingController? bodylanguageController2;

  TextEditingController? bodylanguageController3;

  TextEditingController? bodylanguageController4;

  ScoreModel? scoreModelObj;

  bool isCheckbox;

  @override
  List<Object?> get props => [
        bodylanguageController,
        bodylanguageController1,
        bodylanguageController2,
        bodylanguageController3,
        bodylanguageController4,
        isCheckbox,
        scoreModelObj,
      ];
  ScoreState copyWith({
    TextEditingController? bodylanguageController,
    TextEditingController? bodylanguageController1,
    TextEditingController? bodylanguageController2,
    TextEditingController? bodylanguageController3,
    TextEditingController? bodylanguageController4,
    bool? isCheckbox,
    ScoreModel? scoreModelObj,
  }) {
    return ScoreState(
      bodylanguageController:
          bodylanguageController ?? this.bodylanguageController,
      bodylanguageController1:
          bodylanguageController1 ?? this.bodylanguageController1,
      bodylanguageController2:
          bodylanguageController2 ?? this.bodylanguageController2,
      bodylanguageController3:
          bodylanguageController3 ?? this.bodylanguageController3,
      bodylanguageController4:
          bodylanguageController4 ?? this.bodylanguageController4,
      isCheckbox: isCheckbox ?? this.isCheckbox,
      scoreModelObj: scoreModelObj ?? this.scoreModelObj,
    );
  }
}
