// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String nom = "Dje";
  String prenoms = "Bi Odilon";
  String email = "odilon.djebi@lidar.ci";
  String numero = "+225 0778494985";
  String ville = "Yamoussoukro";

  Widget textfield({@required hintText}) {
    return Material(
      elevation: 2,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            letterSpacing: 2,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // ignore: sized_box_for_whitespace
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            overflow: Overflow.visible,
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                color: const Color.fromRGBO(43, 43, 54, 54),
              ),
              const Positioned(
                top: 110,
                child: CircleAvatar(
                  radius: 40,
                  child: FaIcon(
                    FontAwesomeIcons.user,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 45,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 340,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    textfield(
                      hintText: nom,
                    ),
                    textfield(
                      hintText: prenoms,
                    ),
                    textfield(
                      hintText: email,
                    ),
                    textfield(
                      hintText: numero,
                    ),
                    textfield(
                      hintText: ville,
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            // ignore: avoid_unnecessary_containers
            child: ButtonTheme(
              buttonColor: Colors.red,
              minWidth: MediaQuery.of(context).size.width,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5,
                onPressed: () {},
                child: const Text(
                  "Deconnexion",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
