import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage(Key k) : super(key: k);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ExpansionTile(
            key: PageStorageKey("$index"),
            title: Text(index.toString()),
            children: <Widget>[
              Container(
                color: index % 2 == 0 ? Colors.cyan : Colors.yellow,
                height: 100,
              ),
            ],
          );
        });
  }
}
