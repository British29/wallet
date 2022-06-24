import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portefeuille/screens/depotRetrait/depot_retrait_screen.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int? _toggleValue = 0;

  String? _montant;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ToggleSwitch(
                initialLabelIndex: _toggleValue,
                borderWidth: 5,
                minWidth: MediaQuery.of(context).size.width * 0.42,
                minHeight: MediaQuery.of(context).size.height * 0.04,
                cornerRadius: 10.0,
                activeBgColors: const [
                  [Color.fromARGB(255, 230, 230, 230)],
                  [Color.fromARGB(255, 230, 230, 230)],
                ],
                activeFgColor: Colors.black,
                inactiveBgColor: Colors.grey,
                inactiveFgColor: Colors.black,
                totalSwitches: 2,
                labels: const ['Dépôt', 'Retrait'],
                radiusStyle: true,
                onToggle: (index) {
                  setState(() {
                    _toggleValue = index;
                  });
                }),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            color: const Color.fromARGB(255, 219, 219, 219),
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: TextFormField(
                    onChanged: (value) {
                      _montant = value;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Ce champs est vide';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      suffixIcon: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          (_toggleValue == 1)
                              ? Column(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: FaIcon(
                                        FontAwesomeIcons.ccVisa,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                )
                              : Column(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: FaIcon(
                                        FontAwesomeIcons.wallet,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                )
                        ],
                      ),
                      hintText: 'Entrer le montant',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: ButtonTheme(
              height: 40,
              buttonColor: Colors.blue,
              minWidth: MediaQuery.of(context).size.width,

              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DepotRetraitScreen(
                        statut: _toggleValue!,
                        montant: _montant!,
                      ),
                    ),
                  );
                },
                child: (_toggleValue == 0)
                    ? const Text(
                        'Dépôt',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      )
                    : const Text(
                        'Retrait',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          // const CardScreen(),
        ],
      ),
    );
  }
}
