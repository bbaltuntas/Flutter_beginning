import 'package:bolum_sonu_projesi1/navigation_preoject/navigation_islemleri.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    // initialRoute: "/CPage/APage/DPage",
    // / kullanmak burda geriye gidilebilmeyi gösterir
    onUnknownRoute: (RouteSettings settings) => MaterialPageRoute(
        builder: (context) => DSayfasi("Hata Sayfasi", Colors.black87)),
    routes: {
      "/": (context) => NavigationIslemleri(),
      // "/" zaten home için kullanılır tekrar yazmaya gerek yok
      "/DPage": (context) => DSayfasi("D Sayfası", Colors.deepPurpleAccent),
      "/CPage": (context) => CSayfasi("C Sayfası", Colors.red),
      "/BPage": (context) => BSayfasi("B Sayfası", Colors.green),
      "/APage": (context) => ASayfasi(),
      "/CPage/APage": (context) => ASayfasi(),
      "/CPage/APage/DPage": (context) =>
          DSayfasi("D Sayfası", Colors.deepPurpleAccent),
      "/ListPage": (context) => ListeSayfasi(),
    },
    title: "Flutter Dersleri",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.cyan),
    // home: NavigationIslemleri(),
  ));
}
