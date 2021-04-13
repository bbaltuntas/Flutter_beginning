import 'package:flutter/material.dart';

class StepperProject extends StatefulWidget {
  @override
  _StepperProjectState createState() => _StepperProjectState();
}

class _StepperProjectState extends State<StepperProject> {
  int currentStep = 0;
  String _name, _mail, _password;

  List<Step> _steplerList;
  bool hata = false;
  var key0 = GlobalKey<FormFieldState>();
  var key1 = GlobalKey<FormFieldState>();
  var key2 = GlobalKey<FormFieldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _steplerList = _tumStepler();
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper Örnek"),
      ),
      body: SingleChildScrollView(
        child: Stepper(
          currentStep: currentStep,
          /*   onStepTapped: (index) {
                setState(() {
                  currentStep = index;
                });
              }, */
          onStepContinue: () {
            setState(() {
              _ileriButonuKontrolu();
            });
          },
          onStepCancel: () {
            setState(() {
              if (currentStep != 0) {
                currentStep--;
              }
            });
          },
          steps: _steplerList,
        ),
      ),
    );
  }

  List<Step> _tumStepler() {
    List<Step> stepler = [
      Step(
        title: Text("Username başlık"),
        subtitle: Text("Username altbaşlık"),
        state: _stateleriAyarla(0),
        isActive: true,
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            key: key0,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (s) {
              if (s.length < 6) {
                return " Geçersiz veri";
              } else {
                return null;
              }
            },
            onSaved: (s) {
              _name = s;
            },
            decoration: InputDecoration(
                labelText: "UserName", border: OutlineInputBorder()),
          ),
        ),
      ),
      Step(
        title: Text("Mail başlık"),
        subtitle: Text("Mail altbaşlık"),
        state: _stateleriAyarla(1),
        isActive: true,
        content: Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextFormField(
            key: key1,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (s) {
              if (s.length < 6) {
                return " Geçersiz veri";
              } else {
                return null;
              }
            },
            onSaved: (s) {
              _mail = s;
            },
            decoration: InputDecoration(
                labelText: "Mail", border: OutlineInputBorder()),
          ),
        ),
      ),
      Step(
        title: Text("Şifre başlık"),
        subtitle: Text("Şifre altbaşlık"),
        state: _stateleriAyarla(2),
        isActive: true,
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            key: key2,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (s) {
              if (s.length < 6) {
                return " Geçersiz veri";
              } else {
                return null;
              }
            },
            onSaved: (s) {
              _password = s;
            },
            decoration: InputDecoration(
                labelText: "Şifre", border: OutlineInputBorder()),
          ),
        ),
      ),
    ];
    return stepler;
  }

  StepState _stateleriAyarla(int oankiStep) {
    if (currentStep == oankiStep) {
      if (hata) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else {
      return StepState.complete;
    }
  }

  void _ileriButonuKontrolu() {
    switch (currentStep) {
      case 0:
        if (key0.currentState.validate()) {
          key0.currentState.save();
          hata = false;
          if (currentStep < _steplerList.length - 1) {
            currentStep++;
          }
        } else {
          hata = true;
        }
        break;
      case 1:
        if (key1.currentState.validate()) {
          key1.currentState.save();
          hata = false;
          if (currentStep < _steplerList.length - 1) {
            currentStep++;
          }
        } else {
          hata = true;
        }
        break;
      case 2:
        if (key2.currentState.validate()) {
          key2.currentState.save();
          hata = false;
          if (currentStep < _steplerList.length - 1) {
            currentStep++;
          }
          debugPrint("$_name $_mail $_password");
        } else {
          hata = true;
        }
        break;
    }
  }
}
