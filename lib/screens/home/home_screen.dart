import 'package:flutter/material.dart';
import 'package:portefeuille/components/bottom_bar.dart';
import 'package:portefeuille/screens/exchange/exchange_screen.dart';
import 'package:portefeuille/screens/history/history_screen.dart';
import 'package:portefeuille/screens/home/components/body.dart';
import 'package:portefeuille/screens/profil/profil_screen.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final Map<int, Widget> _menuWidget = {
    0: const HomeBody(),
    1: const HistoryScreen(),
    2: const ExhangeScreen(),
    3: const ProfilScreen(),
  };

  void onItemOntap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: _menuWidget[_currentIndex],
        bottomNavigationBar: BottomBar(
          currentIndex: _currentIndex,
          onItemTapped: (int index) {
            onItemOntap(index);
          },
        ),
      ),
      onWillPop: _onBackPressed,
    );
  }

  Future<bool> _onBackPressed() async {
    return false;
  }
}
