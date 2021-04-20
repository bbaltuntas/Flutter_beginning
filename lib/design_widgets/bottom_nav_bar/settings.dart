import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  var myController =
      PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
  bool isHorizontal = false;
  bool pageSnapping = true;
  int valueDropDown = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            scrollDirection:
                isHorizontal == false ? Axis.horizontal : Axis.vertical,
            reverse: false,
            controller: myController,
            pageSnapping: pageSnapping,
            onPageChanged: (index) {
              debugPrint("$index");
            },
            children: <Widget>[
              Container(
                color: Colors.pinkAccent,
                height: 150,
                width: double.infinity,
                child: Center(
                  child: Text("SAyfa 1"),
                ),
              ),
              Container(
                color: Colors.green,
                height: 150,
                width: double.infinity,
                child: Center(
                  child: Text("SAyfa 2"),
                ),
              ),
              Container(
                color: Colors.deepPurpleAccent,
                height: 150,
                width: double.infinity,
                child: Center(
                  child: Text("SAyfa 3"),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.yellow,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                CheckboxListTile(
                    title: Text("Is Horizontal"),
                    value: isHorizontal,
                    onChanged: (value) {
                      setState(() {
                        isHorizontal = value;
                      });
                    }),
                CheckboxListTile(
                    title: Text("Page Snapping"),
                    value: pageSnapping,
                    onChanged: (value) {
                      setState(() {
                        pageSnapping = value;
                      });
                    }),
                DropdownButton(
                  value: valueDropDown,
                  items: [
                    DropdownMenuItem(value: 0, child: Text("Sayfa 1")),
                    DropdownMenuItem(value: 1, child: Text("Sayfa 2")),
                    DropdownMenuItem(value: 2, child: Text("Sayfa 3")),
                  ],
                  onChanged: (value) {
                    setState(() {
                      myController.jumpToPage(value);
                      valueDropDown = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
