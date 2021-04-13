import 'package:flutter/material.dart';

class OtherFormWidgets extends StatefulWidget {
  @override
  _OtherFormWidgetsState createState() => _OtherFormWidgetsState();
}

class _OtherFormWidgetsState extends State<OtherFormWidgets> {
  bool checkBoxState = false;
  bool isSelected = false;
  String selectedCity = "";
  bool switchState = false;
  double sliderValue = 0;
  String dropDownMenuValue = "Kırmızı";
  List<String> sehilerList = [
    "Ankara",
    "Adana",
    "Istanbul",
    "Mersin",
    "Bursa",
    "Konya",
    "İzmir"
  ];
  String sehirlerDropDown = "Ankara";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Diğer Form Widgetları"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            CheckboxListTile(
                isThreeLine: true,
                secondary: Icon(Icons.done),
                selected: isSelected,
                selectedTileColor: Colors.deepPurpleAccent[100],
                checkColor: Colors.red,
                title: Text("Seçili Değer"),
                subtitle: Text("SubTitle"),
                activeColor: Colors.yellow,
                value: checkBoxState,
                onChanged: (value) {
                  setState(() {
                    isSelected = value;
                    checkBoxState = value;
                  });
                }),
            RadioListTile<String>(
                selected: selectedCity == "Ankara" ? true : false,
                secondary: Icon(Icons.map_rounded),
                title: Text("Ankara"),
                value: "Ankara",
                groupValue: selectedCity,
                onChanged: (value) {
                  setState(() {
                    selectedCity = value;
                  });
                }),
            RadioListTile(
                selected: selectedCity == "Bolu" ? true : false,
                secondary: Icon(Icons.map_rounded),
                title: Text("Bolu"),
                value: "Bolu",
                groupValue: selectedCity,
                onChanged: (value) {
                  setState(() {
                    setState(() {
                      selectedCity = value;
                    });
                  });
                }),
            RadioListTile(
                selected: selectedCity == "Ceyhan" ? true : false,
                secondary: Icon(Icons.map_rounded),
                title: Text("Ceyhan"),
                value: "Ceyhan",
                groupValue: selectedCity,
                onChanged: (value) {
                  setState(() {
                    selectedCity = value;
                  });
                }),
            SwitchListTile(
                activeThumbImage: NetworkImage(
                    "https://www.pngitem.com/pimgs/m/151-1511463_blueberry-tab-bar-notification-notification-icon-png-transparent.png"),
                inactiveThumbImage: NetworkImage(
                    "https://static.thenounproject.com/png/1814822-200.png"),
                title: Text("Bildirimleri Göster"),
                value: switchState,
                onChanged: (value) {
                  setState(() {
                    switchState = value;
                  });
                }),
            Slider(
                min: 0,
                max: 100,
                divisions: 100,
                label: sliderValue.toInt().toString(),
                value: sliderValue,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                  //   debugPrint(sliderValue.toString());
                }),
            DropdownButton(
              value: dropDownMenuValue,
              hint: Text("Seçiniz"),
              onChanged: (String value) {
                setState(() {
                  dropDownMenuValue = value;
                });
              },
              items: [
                DropdownMenuItem(
                  child: Text("Mavi"),
                  value: "Mavi",
                ),
                DropdownMenuItem(
                  child: Text("Kırmızı"),
                  value: "Kırmızı",
                ),
                DropdownMenuItem(
                  child: Text("Sarı"),
                  value: "Sarı",
                ),
              ],
            ),
            DropdownButton<String>(
              items: sehilerList.map((seciliSehir) {
                return DropdownMenuItem<String>(
                  child: Text(seciliSehir),
                  value: seciliSehir,
                );
              }).toList(),
              onChanged: (s) {
                setState(() {
                  sehirlerDropDown = s;
                });
              },
              value: sehirlerDropDown,
            ),
          ],
        ),
      ),
    );
  }
}
