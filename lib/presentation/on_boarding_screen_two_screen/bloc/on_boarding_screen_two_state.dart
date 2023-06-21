// ignore_for_file: must_be_immutable

part of 'on_boarding_screen_two_bloc.dart';

class OnBoardingScreenTwoState extends Equatable {
  OnBoardingScreenTwoState({this.onBoardingScreenTwoModelObj});

  OnBoardingScreenTwoModel? onBoardingScreenTwoModelObj;

  @override
  List<Object?> get props => [
        onBoardingScreenTwoModelObj,
      ];
  OnBoardingScreenTwoState copyWith(
      {OnBoardingScreenTwoModel? onBoardingScreenTwoModelObj}) {
    return OnBoardingScreenTwoState(
      onBoardingScreenTwoModelObj:
          onBoardingScreenTwoModelObj ?? this.onBoardingScreenTwoModelObj,
    );
  }
}
