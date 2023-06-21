// ignore_for_file: must_be_immutable

part of 'on_boarding_screen_three_bloc.dart';

class OnBoardingScreenThreeState extends Equatable {
  OnBoardingScreenThreeState({this.onBoardingScreenThreeModelObj});

  OnBoardingScreenThreeModel? onBoardingScreenThreeModelObj;

  @override
  List<Object?> get props => [
        onBoardingScreenThreeModelObj,
      ];
  OnBoardingScreenThreeState copyWith(
      {OnBoardingScreenThreeModel? onBoardingScreenThreeModelObj}) {
    return OnBoardingScreenThreeState(
      onBoardingScreenThreeModelObj:
          onBoardingScreenThreeModelObj ?? this.onBoardingScreenThreeModelObj,
    );
  }
}
