import 'package:bolum_sonu_projesi1/design_widgets/bottom_nav_bar/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

import 'bottom_navigation_bar.dart';

class SnakeBottomNavigationBar extends StatefulWidget {
  @override
  _SnakeBottomNavigationBarState createState() =>
      _SnakeBottomNavigationBarState();
}

class _SnakeBottomNavigationBarState extends State<SnakeBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
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

      showUnselectedLabels: false,
      showSelectedLabels: true,

      currentIndex: BottomNavigationBarPage.currentIndex,
      onTap: (index) {
        setState(() {
          BottomNavigationBarPage.currentIndex = index;

          // Navigator.push(context,
          //    MaterialPageRoute(builder: (context) => BottomNavigationBarPage()));
        });

      },
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: 'tickets'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'settings'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.mic), label: 'microphone'),
      ],
    );
  }
}
