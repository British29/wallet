/*

import 'package:flutter/material.dart';

class DepotRetrait extends StatefulWidget {
  const DepotRetrait({ Key? key }) : super(key: key);

  @override
  State<DepotRetrait> createState() => _DepotRetraitState();
}

class _DepotRetraitState extends State<DepotRetrait> {

int _currentStep = 0;


  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
        child: Form(
          child: Stepper(
            type: StepperType.vertical,
            currentStep: _currentStep,
            onStepTapped: (int step) => setState(() => _currentStep = step),
            onStepContinue: _currentStep < 3
                ? () => setState(() => _currentStep += 1)
                : null,
            controlsBuilder: (BuildContext context,
                {VoidCallback? onStepContinue, VoidCallback? onStepCancel}) {
              return Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  _currentStep == 3 // la dernière etape du stepper
                      ? Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: ButtonTheme(
                            buttonColor: Colors.lightBlue,
                            height: 55,
                            // ignore: deprecated_member_use
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ConfirmationDepotPage(),
                                  ),
                                );
                              },
                              child: Text(
                                'CONFIRMER LE DEPOT',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        )
                      : TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.resolveWith(getColor),
                          ),
                          onPressed: onStepContinue,
                          child: const Text(
                            'Suivant',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                ],
              );
            },
            steps: <Step>[
               Step(
                title: const  Text(
                  'Numéro de téléphone',
                  style: TextStyle(fontSize: 20),
                ),
                content: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.15),
                  ),
                  child:  TextFormField(
                      decoration: InputDecoration(
                        prefixStyle: const TextStyle(color: Colors.red),
                        prefixIcon: CountryCodePicker(
                          initialSelection: '+225',
                          showCountryOnly: true,
                        ),
                        hintText: 'Numéro',
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return "ce champs ne doit pas etre vide";
                        }
                      }),
                ),
                isActive: _currentStep >= 0,
                state:
                    _currentStep >= 0 ? StepState.complete : StepState.disabled,
              ),
               Step(
                title: const Text(
                  'PAN de la carte du bénéficiare',
                  style: TextStyle(fontSize: 20),
                ),
                content: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.15),
                  ),
                  child:  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon:  Icon(
                        Icons.credit_card,
                        color: Colors.grey,
                      ),
                      hintText: 'carte',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
                isActive: _currentStep >= 0,
                state:
                    _currentStep >= 1 ? StepState.complete : StepState.disabled,
              ),
               Step(
                title: const Text(
                  'Montant à recharger',
                  style: TextStyle(fontSize: 20),
                ),
                content: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.15),
                  ),
                  child:  TextFormField(
                    decoration:const InputDecoration(
                      prefixIcon:  Icon(
                        Icons.money_rounded,
                        color: Colors.grey,
                      ),
                      hintText: 'Montant',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
                isActive: _currentStep >= 0,
                state:
                    _currentStep >= 2 ? StepState.complete : StepState.disabled,
              ),
             const  Step(
                title:  Text(
                  'Confirmation',
                  style: TextStyle(fontSize: 20),
                ),
                content:  Text(' '),
                isActive: true,
                state: StepState.indexed,
              ),
            ],
          ),
        ),
    );
  }
}

*/