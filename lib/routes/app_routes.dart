import 'package:flutter/material.dart';
import 'package:mohammed_s_application3/presentation/splashone_screen/splashone_screen.dart';
import 'package:mohammed_s_application3/presentation/splash_screen/splash_screen.dart';
import 'package:mohammed_s_application3/presentation/login_screen/login_screen.dart';
import 'package:mohammed_s_application3/presentation/signup_screen/signup_screen.dart';
import 'package:mohammed_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashoneScreen = '/splashone_screen';

  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashoneScreen: (context) => SplashoneScreen(),
    splashScreen: (context) => SplashScreen(),
    loginScreen: (context) => LoginScreen(),
    signupScreen: (context) => SignupScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
