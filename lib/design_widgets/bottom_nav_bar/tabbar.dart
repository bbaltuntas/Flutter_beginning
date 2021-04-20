import 'package:flutter/material.dart';

class TabBarOrnek extends StatefulWidget {
  @override
  _TabBarOrnekState createState() => _TabBarOrnekState();
}

class _TabBarOrnekState extends State<TabBarOrnek>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab bar ornek"),
        bottom: TabBar(controller: _tabController, tabs: [
          Tab(
            icon: Icon(Icons.landscape),
          ),
          Tab(
            icon: Icon(Icons.account_circle_rounded),
          ),
          Tab(
            icon: Icon(Icons.access_alarm),
          ),
        ]),
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        Container(
          child: Text("Tab 1"),
          color: Colors.red,
        ),
        Container(
          child: Text("Tab 2"),
          color: Colors.purple,
        ),
        Container(
          child: Text("Tab 3"),
          color: Colors.amber,
        ),
      ]),
    );
  }
}
