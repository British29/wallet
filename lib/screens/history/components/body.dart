import 'package:flutter/material.dart';

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
                              "2 000 000",
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
      ),
    );
  }
}
