import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ImageApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class ImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text(
              "Types of Image Button",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      color: Colors.tealAccent,
                      child: Column(
                        children: [
                          Image(
                            image: NetworkImage(
                                "https://www.valoranthile.com/wp-content/uploads/2020/04/vkk.png"),
                          ),
                          Text("Valorant"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      color: Colors.tealAccent,
                      child: Column(
                        children: [
                          Image(
                            image: NetworkImage(
                                "https://www.valoranthile.com/wp-content/uploads/2020/04/vkk.png"),
                          ),
                          Text("Valorant"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      color: Colors.tealAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.deepPurple,
                            foregroundColor: Colors.deepOrange,
                            backgroundImage: NetworkImage(
                                "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png"),
                          ),
                          Text("Valorant"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      color: Colors.tealAccent,
                      child: Column(
                        children: [
                          Image(
                            image: NetworkImage(
                                "https://www.valoranthile.com/wp-content/uploads/2020/04/vkk.png"),
                          ),
                          Text("Valorant"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      color: Colors.tealAccent,
                      child: Column(
                        children: [
                         FadeInImage.assetNetwork(placeholder: "assets/images/Spinner-1s-200px.gif", image: "https://wallpapercave.com/wp/wp2587127.jpg"),
                          Text("Valorant"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      color: Colors.tealAccent,
                      child: Column(
                        children: [
                          Image.asset("assets/images/vkk.png"),
                          Text("Valorant"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
