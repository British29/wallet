// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portefeuille/screens/home/transactions.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

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
            "Wallets",
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.format_align_right_outlined),
              iconSize: 27,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Stack(
            overflow: Overflow.visible,
            fit: StackFit.loose,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                color: const Color.fromRGBO(43, 43, 54, 54),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: Text(
                        "1 000 000 000 CFA",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Center(
                      child: Text(
                        "+0.8",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Card(
                      margin: const EdgeInsets.all(10),
                      color: Colors.white10,
                      elevation: 16,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.08,
                            ),
                            Column(
                              children: const [
                                CircleAvatar(
                                  child: Icon(Icons.download_outlined),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Recevoir",
                                  style: TextStyle(
                                    color: Colors.white24,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.06,
                            ),
                            Column(
                              children: const [
                                CircleAvatar(
                                  child: Icon(Icons.call_made_outlined),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Envoyer",
                                  style: TextStyle(
                                    color: Colors.white24,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.06,
                            ),
                            Column(
                              children: const [
                                CircleAvatar(
                                  child: FaIcon(
                                      FontAwesomeIcons.moneyBillTransfer),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Dépôt",
                                  style: TextStyle(
                                    color: Colors.white24,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.06,
                            ),
                            Column(
                              children: const [
                                CircleAvatar(
                                  child: Icon(Icons.shopping_cart),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Acheter",
                                  style: TextStyle(
                                    color: Colors.white24,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 220),
                child: TransactionScreen(),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          hoverColor: Colors.transparent,
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
