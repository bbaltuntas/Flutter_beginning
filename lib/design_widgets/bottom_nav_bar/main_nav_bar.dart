import 'package:flutter/material.dart';
import 'bottom_navigation_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        //  fontFamily: "GenelFont", // genelini böyle yapmak için
        primarySwatch: Colors.red,
        accentColor: Colors.cyan),
    home: BottomNavigationBarPage(),
  ));
}
