// ignore_for_file: must_be_immutable

part of 'interview_screen_two_bloc.dart';

class InterviewScreenTwoState extends Equatable {
  InterviewScreenTwoState({this.interviewScreenTwoModelObj});

  InterviewScreenTwoModel? interviewScreenTwoModelObj;

  @override
  List<Object?> get props => [
        interviewScreenTwoModelObj,
      ];
  InterviewScreenTwoState copyWith(
      {InterviewScreenTwoModel? interviewScreenTwoModelObj}) {
    return InterviewScreenTwoState(
      interviewScreenTwoModelObj:
          interviewScreenTwoModelObj ?? this.interviewScreenTwoModelObj,
    );
  }
}
