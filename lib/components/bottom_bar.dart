import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onItemTapped;

  const BottomBar(
      {Key? key, required this.currentIndex, required this.onItemTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 15,
      items: const [
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.wallet),
          label: "Wallets",
          tooltip: "Wallets",
        ),
        BottomNavigationBarItem(
          // ignore: deprecated_member_use
          icon: FaIcon(FontAwesomeIcons.history),
          label: "Historique",
          tooltip: "Historique",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.moneyBillTransfer),
          label: "Dépôt/Retrait",
          tooltip: "Dépôt/Retrait",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profil",
          tooltip: "Profil",
        ),
      ],
      onTap: onItemTapped,
      currentIndex: currentIndex,
      selectedFontSize: 14,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.shifting,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.blue,
    );
  }
}
