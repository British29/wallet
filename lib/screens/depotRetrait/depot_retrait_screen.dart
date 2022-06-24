import 'package:flutter/material.dart';

import 'components/body.dart';

class DepotRetraitScreen extends StatefulWidget {
  final int statut;
  final String montant;
  const DepotRetraitScreen(
      {Key? key, required this.statut, required this.montant})
      : super(key: key);

  @override
  State<DepotRetraitScreen> createState() => _DepotRetraitScreenState();
}

class _DepotRetraitScreenState extends State<DepotRetraitScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("Le statut est : ${widget.statut}");
    // ignore: avoid_print
    print("Le montant est de  : ${widget.montant}");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(43, 43, 54, 54),
        centerTitle: true,
        title: (widget.statut == 0)
            ? const Text(
                "Dépôt",
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),
              )
            : const Text(
                "Retrait",
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
