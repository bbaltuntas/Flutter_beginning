import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DateTimeProject extends StatefulWidget {
  @override
  _DateTimeProjectState createState() => _DateTimeProjectState();
}

class _DateTimeProjectState extends State<DateTimeProject> {
  @override
  Widget build(BuildContext context) {
    DateTime suan = DateTime.now();
    DateTime ucAyOncesi = DateTime(2021, suan.month - 3);
    DateTime yirmiGunSonrasi = DateTime(
      2021,
      suan.month,
      suan.day + 20,
    );

    TimeOfDay suankiSaat = TimeOfDay.now();
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Time Picker"),
      ),
      body: Center(
        child: Column(
          //  crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  showDatePicker(
                          context: context,
                          initialDate: suan,
                          firstDate: ucAyOncesi,
                          lastDate: yirmiGunSonrasi)
                      .then((date) =>
                          print(formatDate(date, [dd, "-", mm, "-", yyyy])));
                },
                child: Text("Tarih Seç")),
            ElevatedButton(
                onPressed: () {
                  showTimePicker(context: context, initialTime: suankiSaat)
                      .then(
                          (time) => debugPrint("${time.hour}  ${time.minute}"));
                },
                child: Text("Saat Seç"))
          ],
        ),
      ),
    );
  }
}
