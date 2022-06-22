import 'package:flutter/material.dart';

import 'components/body.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(43, 43, 54, 54),
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Informations personnelles",
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        body: const Body(),
      ),
    );
  }
}
