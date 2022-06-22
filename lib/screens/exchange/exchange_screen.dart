import 'package:flutter/material.dart';

import 'components/body.dart';

class ExhangeScreen extends StatefulWidget {
  const ExhangeScreen({Key? key}) : super(key: key);

  @override
  State<ExhangeScreen> createState() => _ExhangeScreenState();
}

class _ExhangeScreenState extends State<ExhangeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(43, 43, 54, 54),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Dépôt/Retrait",
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
