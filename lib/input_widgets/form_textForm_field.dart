import 'package:flutter/material.dart';

class TextFormFieldOrnek extends StatefulWidget {
  @override
  _TextFormFieldOrnekState createState() => _TextFormFieldOrnekState();
}

class _TextFormFieldOrnekState extends State<TextFormFieldOrnek> {
  String _adSoyad, _eMailAdress, _sifre;
  final formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          accentColor: Colors.cyan,
          primaryColor: Colors.pinkAccent,
          errorColor: Colors.red[900]),
      child: Scaffold(
        //resizeToAvoidBottomInset:false ,
        appBar: AppBar(
          title: Text("Form Field"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: ListView(
              children: <Widget>[
                TextFormField(
                  onSaved: (deger) {
                    _adSoyad = deger;
                  },
                  autovalidateMode: _autovalidateMode,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle_rounded),
                    labelText: "Name",
                    border: OutlineInputBorder(),
                  ),
                  validator: _isimKontrol,
                ),
                Divider(
                  height: 15,
                ),
                TextFormField(
                  onSaved: (deger) {
                    _eMailAdress = deger;
                  },
                  validator: _emailKontrol,
                  autovalidateMode: _autovalidateMode,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
                Divider(
                  height: 15,
                ),
                TextFormField(
                  onSaved: (deger) {
                    _sifre = deger;
                  },
                  autovalidateMode: _autovalidateMode,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (String s) {
                    if (s.contains(RegExp(r'[A-Z]')) &&
                        s.contains(RegExp(r'[a-z]'))) {
                      return null;
                    } else {
                      return "Büyük harf ve küçük harf kullanın";
                    }
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    labelStyle: TextStyle(color: Colors.deepOrange),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal)),
                    prefixIcon: Icon(Icons.lock),
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                ElevatedButton.icon(
                    onPressed: _girisBilgileriniOnayla,
                    icon: Icon(Icons.save),
                    label: Text("Kaydet"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _emailKontrol(String mail) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(mail))
      return 'Geçersiz mail';
    else
      return null;
  }

  String _isimKontrol(String isim) {
    RegExp regex = RegExp("^[a-zA-Z]+\$");
    if (!regex.hasMatch(isim))
      return 'Isim numara içermemeli';
    else
      return null;
  }

  void _girisBilgileriniOnayla() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      debugPrint("Name: $_adSoyad\n"
          "Email: $_eMailAdress\n"
          "Password: $_sifre");
    } else {
      setState(() {
        _autovalidateMode = AutovalidateMode.always;
      });
      debugPrint("Koşulları Sağlayın");
    }
  }
}
