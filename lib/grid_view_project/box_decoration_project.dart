import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Box Decoration Project"),
      ),
      body: GridView.builder(
          itemCount: 50,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.pink,
                        offset: Offset(10, 5),
                        blurRadius: 20)
                  ],
                  border: Border.all(
                      color: Colors.red[900],
                      style: BorderStyle.solid,
                      width: 5),
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.deepOrange[100 * ((index + 1) % 8)],
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      fit: BoxFit.contain,
                      image: AssetImage("assets/images/adanakebap.jpg")),
                  gradient: LinearGradient(
                      colors: [Colors.amberAccent, Colors.cyanAccent])),
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.all(8.0),
              child: Text(
                "$index",
                textAlign: TextAlign.center,
              ),
            );
          }),
    );
  }
}
