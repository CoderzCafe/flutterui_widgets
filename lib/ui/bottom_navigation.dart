
import 'package:flutter/material.dart';
import '../utils/app_icons.dart' as customIcon;

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("BottomNavigation", style: new TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey[500],
      ),

      body: new Container(),

      bottomNavigationBar: new BottomNavigationBar(
          currentIndex: _currentIndex,
//          backgroundColor: Colors.amberAccent[100],
//          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          iconSize: 30,
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(Icons.home, color: Colors.black38,),
                title: const Text("Home"),
              backgroundColor: Colors.blueGrey
            ),

            new BottomNavigationBarItem(
                icon: new Icon(customIcon.MyFlutterApp.medkit, color: Colors.black38,),
                title: const Text("Clock")
            ),

            new BottomNavigationBarItem(
                icon: new Icon(customIcon.MyFlutterApp.heartbeat, color: Colors.black38,),
                title: const Text("SAT")
            ),

            new BottomNavigationBarItem(
                icon: new Icon(customIcon.MyFlutterApp.user_md, color: Colors.black38,),
                title: const Text("Time")
            ),
          ],
        onTap: (index){
            setState(() {
              _currentIndex = index;
            });
        },
      )
    );
  }
}
