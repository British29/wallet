import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/body.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(43, 43, 54, 54),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Historique",
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.calendarDays),
            iconSize: 27,
          ),
        ],
      ),
      body: const Body(),
    );
  }
}
