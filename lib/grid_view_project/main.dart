import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.deepOrange,
    ),
    debugShowCheckedModeBanner: false,
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
        title: Text("Grid View Project"),
      ),
      body: GridView.count(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(8.0),
        crossAxisCount: 3,
        crossAxisSpacing: 20,
        mainAxisSpacing: 30,
        children: <Widget>[
          Container(
            color: Colors.teal,
          ),
          Container(
            color: Colors.teal,
          ),
          Container(
            color: Colors.teal,
          ),
          Container(
            color: Colors.teal,
          ),
          Container(
            color: Colors.teal,
          ),
          Container(
            color: Colors.teal,
          ),
          Container(
            color: Colors.teal,
          ),
          Container(
            color: Colors.teal,
          ),
          Container(
            color: Colors.teal,
          ),
          Container(
            color: Colors.teal,
          ),
        ],
      ),
    );
  }
}
