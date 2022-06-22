import 'package:flutter/material.dart';

class HeaderScreen extends StatefulWidget {
  const HeaderScreen({Key? key}) : super(key: key);

  @override
  State<HeaderScreen> createState() => _HeaderScreenState();
}

class _HeaderScreenState extends State<HeaderScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: const Text(
        "mot de passe oublié ?",
        style: TextStyle(
          fontStyle: FontStyle.italic,
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
