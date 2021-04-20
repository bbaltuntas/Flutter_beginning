import 'package:flutter/material.dart';

class DrawerDeneme extends StatefulWidget {
  @override
  _DrawerDenemeState createState() => _DrawerDenemeState();
}

class _DrawerDenemeState extends State<DrawerDeneme> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/adanakebap.jpg"),
              )),
              currentAccountPictureSize: Size.square(80),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/57188585?v=4"),
              ),
              accountName: Text("bbaltuntas"),
              accountEmail: Text("borabarisaltuntas@gmail.com")),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.home_sharp),
                  title: Text("Home"),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                ),
                ListTile(
                  leading: Icon(Icons.search),
                  title: Text("Search"),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Colors.green,
                  child: ListTile(
                    leading: Icon(Icons.info_outline),
                    title: Text("About"),
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
