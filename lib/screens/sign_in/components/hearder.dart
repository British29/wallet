import 'package:flutter/material.dart';
import 'package:portefeuille/screens/sign_up/sign_up_screen.dart';

class HeaderScreen extends StatefulWidget {
  const HeaderScreen({Key? key}) : super(key: key);

  @override
  State<HeaderScreen> createState() => _HeaderScreenState();
}

class _HeaderScreenState extends State<HeaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        // ignore: avoid_unnecessary_containers
        Container(
          child: const Text(
            "mot de passe oublié ?",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.blue,
              decoration: TextDecoration.underline,
              fontSize: 15,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              child: const Text(
                "Vous n'avez pas de compte?",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            InkWell(
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: const Text(
                  " inscrivez-vous",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    fontSize: 15,
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, SignUpScreen.routeName);
              },
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        // ignore: avoid_unnecessary_containers
        Container(
          child: const Text("VERSION 1.0"),
        ),
      ],
    );
  }
}
