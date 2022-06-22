import 'package:flutter/widgets.dart';
import 'package:portefeuille/screens/home/home_screen.dart';
import 'package:portefeuille/screens/sign_in/sigin_screen.dart';
import 'package:portefeuille/screens/splash_screen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SiginScreen.routeName: (context) => const SiginScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
   
};
