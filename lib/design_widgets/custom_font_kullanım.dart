import 'package:flutter/material.dart';

class CustomFontKullanimi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Custom Font Kullanımı",
        ),
      ),
      body: Center(
        child: Text(
          "Custom Font Text",
          style: TextStyle(fontFamily: "Elyazisi", fontSize: 25),
        ),
      ),
    );
  }
}
