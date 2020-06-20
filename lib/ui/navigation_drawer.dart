
import 'package:flutter/material.dart';
import '../utils/utils.dart' as utils;

class NavigationDrawerTest extends StatefulWidget {
  @override
  _NavigationDrawerTestState createState() => _NavigationDrawerTestState();
}

class _NavigationDrawerTestState extends State<NavigationDrawerTest> {

  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,

      appBar: new AppBar(
        backgroundColor: Colors.greenAccent,
        title: new Text("Navigation Drawer", style: utils.appbarTitleStyle(),),
        centerTitle: true,

        leading: new IconButton(icon: new Icon(Icons.menu),
          color: Colors.blueGrey,
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },

        ),
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new DrawerHeader(
                decoration: new BoxDecoration(
                  color: Colors.blueGrey
                ),
                child: new Text("Drawer header",
                  style: new TextStyle(color: Colors.white),
                )
            ),

            new ListTile(
              title: new Text("Menu 1", style: new TextStyle(color: Colors.blueGrey),),
              onTap: null,
            ),
            new Divider(),
            new ListTile(
              title: new Text("Menu 2", style: new TextStyle(color: Colors.blueGrey),),
              onTap: null,
            ),
            new ListTile(
              title: new Text("Menu 3", style: new TextStyle(color: Colors.blueGrey),),
              onTap: null,
            ),
          ],
        ),
      ),
    );
  }
}
