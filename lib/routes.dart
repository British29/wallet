import 'package:flutter/widgets.dart';
import 'package:portefeuille/screens/home/home_screen.dart';
import 'package:portefeuille/screens/sign_in/sigin_screen.dart';
import 'package:portefeuille/screens/sign_up/sign_up_screen.dart';
import 'package:portefeuille/screens/splash_screen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreens.routeName: (context) => const SplashScreens(),
  SiginScreen.routeName: (context) => const SiginScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
   
};
