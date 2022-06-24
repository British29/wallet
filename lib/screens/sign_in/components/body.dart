import 'package:flutter/material.dart';
import 'package:portefeuille/screens/home/home_screen.dart';
import 'package:portefeuille/screens/sign_in/components/hearder.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Connectez-vous',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Ce champs est vide';
                }
                return null;
              },
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.alternate_email),
                  hintText: 'Votre email'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Ce champ est vide';
                }
                return null;
              },
              autofocus: false,
              obscureText: _obscureText,
              decoration: InputDecoration(
                fillColor: Colors.red,
                prefixIcon: const Icon(Icons.lock),
                hintText: 'Mot de passe',
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    semanticLabel: _obscureText ? 'voir' : 'cacher',
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 35),
            child: ButtonTheme(
              buttonColor: Colors.blue,
              minWidth: MediaQuery.of(context).size.width,
              height: 40,
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () async {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
                child: const Text(
                  'Connexion',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const HeaderScreen()
        ],
      ),
    );
  }
}
