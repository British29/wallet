import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

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
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 4,
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Nom',
                prefixIcon: Icon(Icons.person),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 4,
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Prenoms',
                prefixIcon: Icon(Icons.person_outline),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 4,
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Numero de la carte',
                prefixIcon: Icon(Icons.closed_caption_off_rounded),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 4,
            ),
            child: IntlPhoneField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Entrer votre numéro mobile",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: Icon(Icons.phone_android_outlined),
              ),
              // ignore: deprecated_member_use
              searchText: "Rechercher par nom du pays",
              initialCountryCode: 'CI',
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 4,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Mot de passe',
                prefixIcon: const Icon(Icons.settings_cell),
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
              autofocus: false,
              obscureText: _obscureText,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 4,
            ),
            child: ButtonTheme(
              buttonColor: Colors.blue,
              minWidth: MediaQuery.of(context).size.width,

              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () {},
                child: const Text(
                  'Confirmer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
