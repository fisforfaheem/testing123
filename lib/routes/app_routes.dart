import 'package:flutter/material.dart';
import 'package:faheem_s_application/presentation/login_screen/login_screen.dart';
import 'package:faheem_s_application/presentation/splash_screen_one_screen/splash_screen_one_screen.dart';
import 'package:faheem_s_application/presentation/on_boarding_screen_one_screen/on_boarding_screen_one_screen.dart';
import 'package:faheem_s_application/presentation/on_boarding_screen_two_screen/on_boarding_screen_two_screen.dart';
import 'package:faheem_s_application/presentation/on_boarding_screen_three_screen/on_boarding_screen_three_screen.dart';
import 'package:faheem_s_application/presentation/splash_screen/splash_screen.dart';
import 'package:faheem_s_application/presentation/register_screen/register_screen.dart';
import 'package:faheem_s_application/presentation/enter_passcode_one_screen/enter_passcode_one_screen.dart';
import 'package:faheem_s_application/presentation/enter_passcode_two_screen/enter_passcode_two_screen.dart';
import 'package:faheem_s_application/presentation/enter_passcode_screen/enter_passcode_screen.dart';
import 'package:faheem_s_application/presentation/profile_one_screen/profile_one_screen.dart';
import 'package:faheem_s_application/presentation/home_container_screen/home_container_screen.dart';
import 'package:faheem_s_application/presentation/interview_screen_two_screen/interview_screen_two_screen.dart';
import 'package:faheem_s_application/presentation/score_one_screen/score_one_screen.dart';
import 'package:faheem_s_application/presentation/score_screen/score_screen.dart';
import 'package:faheem_s_application/presentation/preferences_screen/preferences_screen.dart';
import 'package:faheem_s_application/presentation/settings_one_screen/settings_one_screen.dart';
import 'package:faheem_s_application/presentation/profile_screen/profile_screen.dart';
import 'package:faheem_s_application/presentation/settings_screen/settings_screen.dart';
import 'package:faheem_s_application/presentation/errpr_404_screen/errpr_404_screen.dart';
import 'package:faheem_s_application/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String splashScreenOneScreen = '/splash_screen_one_screen';

  static const String onBoardingScreenOneScreen =
      '/on_boarding_screen_one_screen';

  static const String onBoardingScreenTwoScreen =
      '/on_boarding_screen_two_screen';

  static const String onBoardingScreenThreeScreen =
      '/on_boarding_screen_three_screen';

  static const String splashScreen = '/splash_screen';

  static const String registerScreen = '/register_screen';

  static const String enterPasscodeOneScreen = '/enter_passcode_one_screen';

  static const String enterPasscodeTwoScreen = '/enter_passcode_two_screen';

  static const String enterPasscodeScreen = '/enter_passcode_screen';

  static const String profileOneScreen = '/profile_one_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String interviewScreenTwoScreen = '/interview_screen_two_screen';

  static const String scoreOneScreen = '/score_one_screen';

  static const String scoreScreen = '/score_screen';

  static const String preferencesScreen = '/preferences_screen';

  static const String settingsOneScreen = '/settings_one_screen';

  static const String profileScreen = '/profile_screen';

  static const String settingsScreen = '/settings_screen';

  static const String errpr404Screen = '/errpr_404_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    splashScreenOneScreen: (context) => SplashScreenOneScreen(),
    onBoardingScreenOneScreen: (context) => OnBoardingScreenOneScreen(),
    onBoardingScreenTwoScreen: (context) => OnBoardingScreenTwoScreen(),
    onBoardingScreenThreeScreen: (context) => OnBoardingScreenThreeScreen(),
    splashScreen: (context) => SplashScreen(),
    registerScreen: (context) => RegisterScreen(),
    enterPasscodeOneScreen: (context) => EnterPasscodeOneScreen(),
    enterPasscodeTwoScreen: (context) => EnterPasscodeTwoScreen(),
    enterPasscodeScreen: (context) => EnterPasscodeScreen(),
    profileOneScreen: (context) => ProfileOneScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    interviewScreenTwoScreen: (context) => InterviewScreenTwoScreen(),
    scoreOneScreen: (context) => ScoreOneScreen(),
    scoreScreen: (context) => ScoreScreen(),
    preferencesScreen: (context) => PreferencesScreen(),
    settingsOneScreen: (context) => SettingsOneScreen(),
    profileScreen: (context) => ProfileScreen(),
    settingsScreen: (context) => SettingsScreen(),
    errpr404Screen: (context) => Errpr404Screen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
