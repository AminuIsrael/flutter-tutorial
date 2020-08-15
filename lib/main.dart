import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Stateful App Example", home: FavouriteCity()));
}

class FavouriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavouriteCityState();
  }
}

class _FavouriteCityState extends State<FavouriteCity> {
  String nameCity = "";
  var _currencies = ["Naira", "Dollar", "Pounds"];
  var _currentItemSelected = "yen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful App Example"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  nameCity = userInput;
                });
              },
            ),
            DropdownButton<String>(
              items: _currencies.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),
              onChanged: (String newValueSelected) {
                _ondropDownItemSelected(newValueSelected);
              },
              value: _currentItemSelected,
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text("Your best city is $nameCity"),
            )
          ],
        ),
      ),
    );
  }

  void _ondropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
}
