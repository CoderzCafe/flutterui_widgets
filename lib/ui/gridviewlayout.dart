
import 'package:flutter/material.dart';
import '../utils/utils.dart' as utils;

class GridviewLayout extends StatefulWidget {
  @override
  _GridviewLayoutState createState() => _GridviewLayoutState();
}

class _GridviewLayoutState extends State<GridviewLayout> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Gridview Layout",
                style: utils.appbarTitleStyle(),
        ),
        centerTitle: true,
      ),

      body: OrientationBuilder(builder: (context, orientation){
        return GridView.count(
            crossAxisCount: (orientation == Orientation.portrait? 2: 3),
            crossAxisSpacing: 2.0,

          children: <Widget>[
            new Container(
              padding: const EdgeInsets.all(8.0),
              child: new Image.asset("images/image_0.jpg",
              height: 200.0,
              width: 200.0,),
            ),

            new Container(
              padding: const EdgeInsets.all(8.0),
              child: new Image.asset("images/image_1.jpg",
                height: 200.0,
                width: 200.0,),
            ),

            new Container(
              padding: const EdgeInsets.all(8.0),
              child: new Image.asset("images/image_2.jpg",
                height: 200.0,
                width: 200.0,),
            ),

            new Container(
              padding: const EdgeInsets.all(8.0),
              child: new Image.asset("images/image_3.jpg",
                height: 200.0,
                width: 200.0,),
            ),

            new Container(
              padding: const EdgeInsets.all(8.0),
              child: new Image.asset("images/image_4.jpg",
                height: 200.0,
                width: 200.0,),
            ),

            new Container(
              padding: const EdgeInsets.all(8.0),
              child: new Image.asset("images/image_5.jpg",
                height: 200.0,
                width: 200.0,),
            ),

          ],
        );
      }),
    );
  }
}
