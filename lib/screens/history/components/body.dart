import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<String> historique = <String>[
    '1',
    '2',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // ignore: sized_box_for_whitespace
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: historique.map<Widget>((String e) {
                  return Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(5),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: ListTile(
                        // ignore: avoid_unnecessary_containers
                        leading: Container(
                          child: const CircleAvatar(
                            backgroundColor: Colors.white,
                            child: FaIcon(
                              FontAwesomeIcons.bitcoin,
                              color: Colors.orange,
                              size: 35,
                            ),
                          ),
                        ),
                        // trailing: const Icon(
                        //   Icons.arrow_circle_up,
                        //   size: 10,
                        // ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Débité',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '-100 000 000',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Frais ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 11,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: const [
                                        Text(
                                          "Date",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 11,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "+(1%)",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Lun 26 juil 2022",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.7,
            // ),
          ],
        ),
      ),
    );
  }
}

/*

        
        Column(
          children: [
            Expanded(
              child: ListView(
                children: historique.map<Widget>((String e) {
                  return Card(
                    elevation: 2,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 3.0,
                      vertical: 1.0,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(64, 75, 96, .9),
                      ),
                      child: ListTile(
                        leading: Container(
                            padding: const EdgeInsets.only(right: 12.0),
                            decoration: const BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  width: 1.0,
                                  color: Colors.white24,
                                ),
                              ),
                            ),
                            child: const Icon(
                              Icons.verified,
                              color: Colors.white,
                              size: 30,
                            )),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Dépôt",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "200 000 000",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        subtitle: Row(
                          children: const [
                            SizedBox(
                              height: 6,
                            ),
                            Icon(
                              Icons.linear_scale,
                              color: Colors.blue,
                            ),
                            Text(
                              " Lun 26 juil 2022",
                              style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                fontSize: 11,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      


*/