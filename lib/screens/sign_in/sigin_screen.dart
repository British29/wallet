import 'package:flutter/material.dart';

import 'components/body.dart';

class SiginScreen extends StatefulWidget {
  static String routeName = "/sigin_in";
  const SiginScreen({Key? key}) : super(key: key);

  @override
  State<SiginScreen> createState() => _SiginScreenState();
}

class _SiginScreenState extends State<SiginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
