
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/utils.dart' as utils;

class DropdownButtonWidget extends StatefulWidget {
  @override
  _DropdownButtonWidgetState createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {

  List _cities = ["Dhaka", "Rajshahi", "Rangpur", "Syllhet", "Barishal", "Khulna", "Chittagong", "Cumilla"];

  List<DropdownMenuItem<String>> _dropdownMenuItems;
  String _currentCity;

  @override
  void initState() {
    _dropdownMenuItems = getDropDownMenuItems();
    _currentCity = _dropdownMenuItems[0].value;
    super.initState();
  }


  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();

    for(String city in _cities) {
      items.add(new DropdownMenuItem(
          value: city,
          child: new Text(city))
      );
    }
    return items;
  }




   @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.greenAccent,
        title: new Text("DropdownButtonWidget", style: utils.appbarTitleStyle(),),
        centerTitle: true,
      ),

      body: new Container(
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Please choose your city: "),

              new Container(
                padding: new EdgeInsets.all(16.9),
              ),

              new Container(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 15.5, right: 10.0),
                decoration: new BoxDecoration(
                  color: Colors.lightGreenAccent,
                  borderRadius: BorderRadius.circular(100.0)
                ),
                child: new DropdownButtonHideUnderline(
                    child: new DropdownButton(
                        value: _currentCity,
                        items: _dropdownMenuItems,
                        onChanged: changeDropdownItem)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void changeDropdownItem(String value) {
    print("Selected city $value, we are going to refresh the ui");
    setState(() {
      _currentCity = value;
    });
  }
}
