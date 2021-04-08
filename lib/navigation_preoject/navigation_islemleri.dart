import 'package:flutter/material.dart';

class NavigationIslemleri extends StatefulWidget {
  @override
  _NavigationIslemleriState createState() => _NavigationIslemleriState();
}

class _NavigationIslemleriState extends State<NavigationIslemleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NavigationIslemleri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
                child: Text("A Sayfasına Git"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => ASayfasi()));
                }),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.red[900]),
                ),
                child: Text("B Sayfasına Git"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) =>
                              BSayfasi("B Sayfası", Colors.red[900]))).then(
                      (value) =>
                          debugPrint("Pop İşleminden Dönülen Değer $value"));
                }),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.yellow),
                ),
                child: Text("C Sayfasına Git ve Geri Gelme"),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CSayfasi("C Sayfası", Colors.yellow)));
                }),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.deepPurpleAccent),
                ),
                child: Text("D Sayfasına Route ile Git"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/DPage");
                }),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.deepOrange),
                ),
                child: Text("Liste Sayfasına Git"),
                onPressed: () {
                  Navigator.pushNamed(context, "/ListPage");
                }),
          ],
        ),
      ),
    );
  }
}

class ListeDetay extends StatelessWidget {
  int index;

  ListeDetay(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eleman $index"),
      ),
      body: Center(
        child: Text("$index"),
      ),
    );
  }
}

class ListeSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liste Sayfasi"),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListeDetay(index + 1)));
                  },
                  title: Text("Liste Elemanı ${index + 1}"),
                ),
              );
            }),
      ),
    );
  }
}

class DSayfasi extends StatelessWidget {
  String title;

  Color themeColor;

  DSayfasi(this.title, this.themeColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "D Sayfası",
          ),
        ),
        body: Center(
            child: Text(
          "D Sayfası",
          style: TextStyle(color: Colors.green, fontSize: 21.0),
        )));
  }
}

class CSayfasi extends StatelessWidget {
  String appBarTitle;
  Color themeColor;

  CSayfasi(this.appBarTitle, this.themeColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: Text(
            appBarTitle,
          ),
        ),
        body: Center(
            child: Text(
          appBarTitle,
          style: TextStyle(color: Colors.green, fontSize: 21.0),
        )));
  }
}

class BSayfasi extends StatelessWidget {
  String title;
  Color themeColor;

  BSayfasi(this.title, this.themeColor);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        debugPrint("On Will Pop Çalıştı");
        Navigator.pop(
            context, false); // bilgi yollamadan çıkma işlemini engellemek için
        return Future.value(false);
      },
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: themeColor,
            title: Text(
              title,
            ),
          ),
          body: Center(
              child: Column(
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.green, fontSize: 21.0),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red[900]),
                  ),
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child: Text("Geri Dön")),
            ],
          ))),
    );
  }
}

class ASayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "A Sayfası",
          ),
        ),
        body: Center(
            child: Text(
          "A Sayfası",
          style: TextStyle(color: Colors.green, fontSize: 21.0),
        )));
  }
}
