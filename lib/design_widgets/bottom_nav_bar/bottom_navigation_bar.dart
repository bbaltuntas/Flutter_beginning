import 'package:bolum_sonu_projesi1/design_widgets/bottom_nav_bar/home.dart';
import 'package:bolum_sonu_projesi1/design_widgets/bottom_nav_bar/search.dart';
import 'package:bolum_sonu_projesi1/design_widgets/bottom_nav_bar/settings.dart';
import 'package:bolum_sonu_projesi1/design_widgets/bottom_nav_bar/snake_bottom_navigation_bar.dart';
import 'package:bolum_sonu_projesi1/design_widgets/bottom_nav_bar/tabbar.dart';
import 'package:bolum_sonu_projesi1/design_widgets/drawer_deneme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class BottomNavigationBarPage extends StatefulWidget {
  static int currentIndex;

  @override
  _BottomNavigationBarPageState createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  var keyAnaSayfa =
      PageStorageKey("key_ana_sayfa"); // aynı sayfadan devam etmek için
  var keyAramaSayfa = PageStorageKey("key_arama_sayfası");

  List<Widget> tumSayfalar;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tumSayfalar = [
      HomePage(keyAnaSayfa),
      SearchPage(keyAramaSayfa),
      SettingPage()
    ];

    BottomNavigationBarPage.currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerDeneme(),
      bottomNavigationBar: MyBottomNavigationBar(),
      appBar: AppBar(
        title: Text("Bottom Navigation Bar "),
      ),
      body: tumSayfalar[BottomNavigationBarPage.currentIndex],
    );
  }

  Widget MyBottomNavigationBar() {
    return SnakeNavigationBar.color(
      behaviour: SnakeBarBehaviour.floating,
      snakeShape: SnakeShape.circle,
      //shape: bottomBarShape,
      padding: EdgeInsets.all(8.0),

      ///configuration for SnakeNavigationBar.color
      snakeViewColor: Colors.green,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.blueGrey,

      ///configuration for SnakeNavigationBar.gradient
      //snakeViewGradient: selectedGradient,
      //selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
      //unselectedItemGradient: unselectedGradient,

      showUnselectedLabels: true,
      showSelectedLabels: false,

      currentIndex: BottomNavigationBarPage.currentIndex,
      onTap: (index) => setState(() {
        if (index == 3) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TabBarOrnek()));
        } else {
          BottomNavigationBarPage.currentIndex = index;
        }
      }),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_sharp), label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'settings'),
        BottomNavigationBarItem(
            icon: Icon(Icons.addchart_sharp), label: 'tabbar'),
      ],
    );
  }
}
