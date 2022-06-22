import 'package:flutter/material.dart';
import 'package:portefeuille/screens/sign_in/sigin_screen.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          // ignore: deprecated_member_use
          child: RaisedButton(
            child: const Text("Voir"),
            onPressed: () {
              Navigator.pushNamed(context, SiginScreen.routeName);
            },
          ),
        ),
      ),
    );
  }
}
