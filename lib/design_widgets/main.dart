import 'file:///D:/AndroidProject/bolum_sonu_projesi1/lib/design_widgets/bottom_nav_bar/bottom_navigation_bar.dart';
import 'package:bolum_sonu_projesi1/design_widgets/custom_font_kullan%C4%B1m.dart';
import 'package:bolum_sonu_projesi1/design_widgets/drawer_deneme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        //  fontFamily: "GenelFont", // genelini böyle yapmak için
        primarySwatch: Colors.red,
        accentColor: Colors.cyan),
    home: CustomFontKullanimi(),
  ));
}
