import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  SearchPage(Key k) : super(key: k);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 25,
        itemExtent: 250,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(8),
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              elevation: 4,
              color: index % 2 == 0 ? Colors.pink : Colors.green,
              child: Center(
                child: Text(index.toString()),
              ),
            ),
          );
        });
  }
}
