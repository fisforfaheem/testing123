// ignore_for_file: must_be_immutable

part of 'splash_screen_one_bloc.dart';

class SplashScreenOneState extends Equatable {
  SplashScreenOneState({this.splashScreenOneModelObj});

  SplashScreenOneModel? splashScreenOneModelObj;

  @override
  List<Object?> get props => [
        splashScreenOneModelObj,
      ];
  SplashScreenOneState copyWith(
      {SplashScreenOneModel? splashScreenOneModelObj}) {
    return SplashScreenOneState(
      splashScreenOneModelObj:
          splashScreenOneModelObj ?? this.splashScreenOneModelObj,
    );
  }
}
