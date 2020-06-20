

import "package:flutter/material.dart";

class ExpansionTileTest2 extends StatefulWidget {
  ExpansionTileTest2({Key key}) : super(key: key);

  @override
  _ExpansionTileTest2State createState() => _ExpansionTileTest2State();
}

class _ExpansionTileTest2State extends State<ExpansionTileTest2> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text("ExpansionTile", style: new TextStyle(fontSize: 20),),
        centerTitle: true,
      ),
      
      body: new Column(
        children: <Widget>[
          new ExpansionTile(
            title: new Text("ShinePizza"),
            leading: new Icon(Icons.local_pizza, color: Colors.greenAccent,),
//        backgroundColor: Colors.amber,
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new SizedBox(height: 10,),
                  new Text("Lorem ipsum dolor sit amet consectetur adipisicing.\n elit. Voluptatem consequatur temporibus incidunt velit eveniet aperiam qui obcaecati magnam adipisci et, magni quo reiciendis voluptate vero earum quia! Sequi, doloremque id.")
                ],
              )
            ],
          ),

          new ExpansionTile(
            title: new Text("ShinesPasta"),
            subtitle: new Text("Lorem ipsum dolor sit"),
            leading: new Icon(Icons.palette, color: Colors.greenAccent,),
//        backgroundColor: Colors.amber,
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new SizedBox(height: 10,),
                  new Text("Lorem ipsum dolor sit amet consectetur adipisicing.\n elit. Voluptatem consequatur temporibus incidunt velit eveniet aperiam qui obcaecati magnam adipisci et, magni quo reiciendis voluptate vero earum quia! Sequi, doloremque id.")
                ],
              )
            ],
          ),

          new ExpansionTile(
            title: new Text("Food"),
            leading: new Icon(Icons.fastfood, color: Colors.greenAccent,),
//        backgroundColor: Colors.amber,
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new SizedBox(height: 10,),
                  new Text("Lorem ipsum dolor sit amet consectetur adipisicing.\n elit. Voluptatem consequatur temporibus incidunt velit eveniet aperiam qui obcaecati magnam adipisci et, magni quo reiciendis voluptate vero earum quia! Sequi, doloremque id.")
                ],
              )
            ],
          ),

        ],
      )
    );
  }
}
