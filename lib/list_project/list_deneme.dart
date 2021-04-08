import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Student> studentList = List.generate(
      20, (index) => Student(index, "name${index}", "surname${index}"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Deneme"),
      ),
      body: ListView.builder(
          itemCount: studentList.length,
          itemBuilder: (context, index) => Card(
                color: index % 2 == 0 ? Colors.amber : Colors.greenAccent,
                child: ListTile(
                  onTap: () {
                    showAlerDialog(context, index);
                  },
                  onLongPress: () {
                    Fluttertoast.showToast(
                        msg: "Seçili Öğrenci: ${studentList[index].name}",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.SNACKBAR,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        fontSize: 16.0);
                  },
                  leading: Icon(Icons.account_circle_rounded),
                  trailing: Icon(Icons.cancel_rounded),
                  title: Text("${studentList[index].id}"),
                  subtitle: Text(
                      "${studentList[index].name}  ${studentList[index].surname}"),
                ),
              )),
    );
  }

  void showAlerDialog(BuildContext ctx, int index) {
    showDialog(
        context: ctx,
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            actions: <Widget>[
              BackButton(
                color: Colors.teal,

              ),
            ],
            title: Text("Öğrenci Bilgisi"),
            content: Text(
                "Seçili Öğrenci: ${studentList[index].name}  ${studentList[index].surname}"),
          );
        });
  }
}

class Student {
  int id;
  String name;
  String surname;

  Student(this.id, this.name, this.surname);
}
