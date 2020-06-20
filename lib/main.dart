

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutterallui/ui/bottom_navigation.dart';
import 'package:flutterallui/ui/expansion_tile_test.dart';
import 'package:flutterallui/ui/expansion_tile_test2.dart';
import 'package:flutterallui/ui/pageviewerwidget.dart';
import './utils/utils.dart' as utils;
import './ui/navigation_drawer.dart';
import './ui/dropdownbutton.dart';
import './ui/gridviewlayout.dart';
import 'package:path_provider/path_provider.dart';
import './ui/UseCustomIcon.dart';

void main() {

  runApp(
    new MaterialApp(
      title: "All UI widgets",
        home: ExpansionTileTest2(),
    )
  );
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("All ui widgets", style: utils.appbarTitleStyle(),),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),

      body: new Container(
        child: new Center(
          child: new RaisedButton(
              child: new Text("Next"),
              color: Colors.orange,
              onPressed: () {
                var router = new MaterialPageRoute(builder: (BuildContext context){
                  return new DropdownButtonWidget();
                });
                Navigator.of(context).push(router);
              }),
        ),
      ),
    );
  }
}