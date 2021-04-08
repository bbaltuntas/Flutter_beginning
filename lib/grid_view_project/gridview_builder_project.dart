import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> menuName = [
    "Kebab",
    "Kebab",
    "Kebab",
    "Kebab",
    "Kebab",
    "Kebab",
    "Kebab",
    "Kebab",
    "Kebab",
    "Kebab",
    "Kebab",
    "Kebab",
    "Kebab",
    "Kebab",
    "Kebab",
    "Kebab",
    "Kebab",
    "Kebab",
    "Kebab",
    "Kebab",
  ];
  List<String> menuPhoto = [
    "https://im.haberturk.com/2020/11/04/ver1604443406/2858225_810x458.jpg",
    "https://img.acunn.com/foto/1200x675/uploads/icerikler/2020/10/10/adana-kebap-tarifi15839585245f820001272d7.jpg",
    "https://img.acunn.com/foto/1200x675/uploads/icerikler/2020/10/10/adana-kebap-tarifi15839585245f820001272d7.jpg",
    "https://img.acunn.com/foto/1200x675/uploads/icerikler/2020/10/10/adana-kebap-tarifi15839585245f820001272d7.jpg",
    "https://img.acunn.com/foto/1200x675/uploads/icerikler/2020/10/10/adana-kebap-tarifi15839585245f820001272d7.jpg",
    "https://img.acunn.com/foto/1200x675/uploads/icerikler/2020/10/10/adana-kebap-tarifi15839585245f820001272d7.jpg",
    "https://img.acunn.com/foto/1200x675/uploads/icerikler/2020/10/10/adana-kebap-tarifi15839585245f820001272d7.jpg",
    "https://img.acunn.com/foto/1200x675/uploads/icerikler/2020/10/10/adana-kebap-tarifi15839585245f820001272d7.jpg",
    "https://img.acunn.com/foto/1200x675/uploads/icerikler/2020/10/10/adana-kebap-tarifi15839585245f820001272d7.jpg",
    "https://img.acunn.com/foto/1200x675/uploads/icerikler/2020/10/10/adana-kebap-tarifi15839585245f820001272d7.jpg",
    "https://img.acunn.com/foto/1200x675/uploads/icerikler/2020/10/10/adana-kebap-tarifi15839585245f820001272d7.jpg",
    "https://img.acunn.com/foto/1200x675/uploads/icerikler/2020/10/10/adana-kebap-tarifi15839585245f820001272d7.jpg",
    "https://img.acunn.com/foto/1200x675/uploads/icerikler/2020/10/10/adana-kebap-tarifi15839585245f820001272d7.jpg",
    "https://img.acunn.com/foto/1200x675/uploads/icerikler/2020/10/10/adana-kebap-tarifi15839585245f820001272d7.jpg",
    "https://img.acunn.com/foto/1200x675/uploads/icerikler/2020/10/10/adana-kebap-tarifi15839585245f820001272d7.jpg",
    "https://img.acunn.com/foto/1200x675/uploads/icerikler/2020/10/10/adana-kebap-tarifi15839585245f820001272d7.jpg",
    "https://img.acunn.com/foto/1200x675/uploads/icerikler/2020/10/10/adana-kebap-tarifi15839585245f820001272d7.jpg",
    "https://img.acunn.com/foto/1200x675/uploads/icerikler/2020/10/10/adana-kebap-tarifi15839585245f820001272d7.jpg",
    "https://img.acunn.com/foto/1200x675/uploads/icerikler/2020/10/10/adana-kebap-tarifi15839585245f820001272d7.jpg",
    "https://img.acunn.com/foto/1200x675/uploads/icerikler/2020/10/10/adana-kebap-tarifi15839585245f820001272d7.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview builder"),
      ),
      body: GridView.builder(
          padding: EdgeInsets.all(8.0),
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.all(10.0),
              height: 200,
              width: 200,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Center(
                    child: Container(
                      child: FadeInImage(
                          placeholder:
                              AssetImage("assets/images/Spinner-1s-200px.gif"),
                          image: NetworkImage(menuPhoto[index])),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      height: 20,
                    ),
                  ),
                  Expanded(
                      child: Text(
                    menuName[index],
                    textAlign: TextAlign.right,
                  )),
                ],
              ),
              color: Colors.pink,
            );
          }),
    );
  }
}
