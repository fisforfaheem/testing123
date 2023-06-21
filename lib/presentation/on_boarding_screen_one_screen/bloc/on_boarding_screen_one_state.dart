// ignore_for_file: must_be_immutable

part of 'on_boarding_screen_one_bloc.dart';

class OnBoardingScreenOneState extends Equatable {
  OnBoardingScreenOneState({this.onBoardingScreenOneModelObj});

  OnBoardingScreenOneModel? onBoardingScreenOneModelObj;

  @override
  List<Object?> get props => [
        onBoardingScreenOneModelObj,
      ];
  OnBoardingScreenOneState copyWith(
      {OnBoardingScreenOneModel? onBoardingScreenOneModelObj}) {
    return OnBoardingScreenOneState(
      onBoardingScreenOneModelObj:
          onBoardingScreenOneModelObj ?? this.onBoardingScreenOneModelObj,
    );
  }
}
