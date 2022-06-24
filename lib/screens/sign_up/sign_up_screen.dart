import 'package:flutter/material.dart';

import 'components/body.dart';

class SignUpScreen extends StatefulWidget {
  static String routeName = "/sign_up";

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: const Body(),
      ),
    );
  }
}
