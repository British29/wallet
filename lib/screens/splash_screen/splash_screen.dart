import 'package:flutter/material.dart';
import 'package:portefeuille/screens/sign_in/sigin_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreens extends StatefulWidget {
  static String routeName = "/";
  const SplashScreens({Key? key}) : super(key: key);

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: const SiginScreen(),
      duration: 3000,
      imageSize: 250,
      imageSrc: "assets/images/img.png",
      text: "Bienvenue sur le Wallet",
      textType: TextType.ScaleAnimatedText,
      textStyle: const TextStyle(
        fontSize: 40.0,
      ),
      backgroundColor: Colors.white,
    );
  }
}
