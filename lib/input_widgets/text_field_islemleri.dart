import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldIslemleri extends StatefulWidget {
  @override
  _TextFieldIslemleriState createState() => _TextFieldIslemleriState();
}

class _TextFieldIslemleriState extends State<TextFieldIslemleri> {
  FocusNode _focusNode;
  String inputText;
  int maxLine = 1;
  TextEditingController textEditingController1;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    textEditingController1 = TextEditingController();
    _focusNode.addListener(() {
      setState(() {
        if (_focusNode.hasFocus) {
          maxLine = 3;
        } else {
          maxLine = 1;
        }
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    textEditingController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint(textEditingController1.text.toString());
        },
      ),
      //  resizeToAvoidBottomInset: false, // hataları önlemek için koyabilirsin
      appBar: AppBar(
        title: Text("Form Islemleri"),
      ),
      body: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: textEditingController1,
            focusNode: _focusNode,
            decoration: InputDecoration(
                icon: Icon(Icons.account_circle_rounded),
                labelText: "Name",
                hintText: " Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                )),
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            autofocus: false,
            cursorColor: Colors.deepPurpleAccent,
            //maxLength: 50,
            maxLines: maxLine,
            onChanged: (String s) {
              debugPrint("Char: $s");
            },
            onSubmitted: (String s) {
              setState(() {
                inputText = s;
              });
              debugPrint("Line submitted: $s");
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
                icon: Icon(Icons.account_circle_rounded),
                labelText: "Name",
                hintText: " Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                )),
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            autofocus: false,
            cursorColor: Colors.deepPurpleAccent,
            maxLength: 50,
            maxLines: 1,
            onChanged: (String s) {
              debugPrint("Char: $s");
            },
            onSubmitted: (String s) {
              setState(() {
                inputText = s;
              });
              debugPrint("Line submitted: $s");
            },
          ),
        ),
        Container(
          margin: EdgeInsets.all(8.0),
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 5,
          color: Colors.green,
          child: Align(
              alignment: Alignment.center,
              child: Text(inputText == null ? "" : inputText)),
        ),
      ]),
    );
  }
}
