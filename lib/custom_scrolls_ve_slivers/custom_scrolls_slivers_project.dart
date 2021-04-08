import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/images/vkk.png"),
            ),
            title: Text("Custom Scroll View Project"),
            backgroundColor: Colors.green,
            expandedHeight: 200,
          ),
          SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverList(
                delegate: SliverChildListDelegate(
              [
                Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.redAccent,
                  child: Text(
                    "Sabit liste 1",
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.blue,
                  child: Text(
                    "Sabit liste 2",
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.green,
                  child: Text(
                    "Sabit liste 3",
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.amberAccent,
                  child: Text(
                    "Sabit liste 4",
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.deepOrange,
                  child: Text(
                    "Sabit liste 5",
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.amberAccent,
                  child: Text(
                    "Sabit liste 6",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: 6),
          ),
          SliverFixedExtentList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    height: 100,
                    alignment: Alignment.center,
                    color: RandomColorGenerator(),
                    child: Text(
                      "SAbit Liste 1",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 100,
                    alignment: Alignment.center,
                    color: RandomColorGenerator(),
                    child: Text(
                      "Sabit Liste 2",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 100,
                    alignment: Alignment.center,
                    color: RandomColorGenerator(),
                    child: Text(
                      "SAbit Liste 3",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              itemExtent: 200),
          SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate(
                  _dinamikElemanUretenFonksiyon,
                  childCount: 6),
              itemExtent: 150),
          SliverGrid(
              delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,childCount: 10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisSpacing: 4.0,crossAxisSpacing: 4.0,crossAxisCount: 3))
        ],
      ),
    );
  }

  Widget _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        alignment: Alignment.center,
        color: RandomColorGenerator(),
        child: Text(
          "Dinamik Liste $index",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Color RandomColorGenerator() {
    return Color.fromARGB(Random().nextInt(255), Random().nextInt(255),
        Random().nextInt(255), Random().nextInt(255));
  }
}
