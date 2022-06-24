import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String pswd = '';
  String confPswd = '';
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Inscription',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 40),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Ajouter un nom & prenoms';
                }
                return null;
              },
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person), hintText: 'Nom & prenoms'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Ajouter une addresse email';
                }
                return null;
              },
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.alternate_email_sharp),
                  hintText: 'Adresse Email'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
            child: TextFormField(
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Ajouter un numéro';
                }
                return null;
              },
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.phone_android),
                  hintText: 'Numéro de Telephone'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Ajouter une adresse';
                }
                return null;
              },
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.home_outlined), hintText: 'Adresse'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock_open_outlined),
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
                validator: (val) => val!.length < 7
                    ? 'Mot de passe trop court ou ajouter des chiffres, Lettres et caractères spéciaux'
                    : null,
                onChanged: (val) => pswd = val,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: TextFormField(
                autofocus: false,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock_open_outlined),
                  hintText: 'répéter le mot de passe',
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
                onChanged: (val) => confPswd = val,
                validator: (val) =>
                    confPswd != pswd ? 'Mot de passe pas conforme' : null,
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
                onPressed: () {},
                child: const Text(
                  "S'inscrire",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
