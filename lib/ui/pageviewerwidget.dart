
import 'package:flutter/material.dart';


class PageViewerWidget extends StatefulWidget {
  @override
  _PageViewerWidgetState createState() => _PageViewerWidgetState();
}

class _PageViewerWidgetState extends State<PageViewerWidget> {

  PageController _pageController = new PageController(
    initialPage: 0,
  );
//  PageController _pageController = new PageController();
//  var currentPageValue = 0.0;
  bool _yesChecked = false;
  bool _noChecked = false;
  
  
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    _pageController.addListener(() {
//      setState(() {
//        currentPageValue = _pageController.page;
//      });
//    });
//  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text("PageView widget", style: new TextStyle(color: Colors.white),),
        centerTitle: true,
      ),

      body: new PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new Container(color: Colors.white,
            child: new Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[

              new Column(
                children: <Widget>[
                  new Text("1. Have you been within 6 feet of a person with a lab-confirmed case of COVID-19 for at least 5 minutes, or had direct contact with their mucus or saliva, in the past 14 days?",
                    style: new TextStyle(fontSize: 16),),

                  new CheckboxListTile(
                    title: new Text("Yes"),
                    secondary: new Icon(Icons.beach_access),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _yesChecked,
                    onChanged: (bool value){
                      setState(() {
                        _yesChecked = value;
                      });
                    },
                    activeColor: Colors.blueGrey,
                    checkColor: Colors.black,
                  ),

                  new CheckboxListTile(
                    title: new Text("No"),
                    secondary: new Icon(Icons.beach_access),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _noChecked,
                    onChanged: (bool value){
                      setState(() {
                        _noChecked = value;
                      });
                    },
                    activeColor: Colors.blueGrey,
                    checkColor: Colors.black,
                  ),
                ],
              ),

              new RaisedButton(
                color: Colors.green,
                onPressed: (){
                  _pageController.nextPage(duration: new Duration(milliseconds: 500), curve: Curves.easeInCubic);
                },
                child: new Text("Next", style: new TextStyle(color: Colors.white),),
              )
            ],
          ),
          ),

          new Container(color: Colors.cyan,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Text("Page no:}", style: new TextStyle(color: Colors.black, fontSize: 30),),

                new RaisedButton(
                  color: Colors.green,
                  onPressed: (){
                    _pageController.nextPage(duration: new Duration(milliseconds: 500), curve: Curves.easeInCubic);
                  },
                  child: new Text("Next", style: new TextStyle(color: Colors.white),),
                )
              ],
            ),
          ),

          new Container(color: Colors.brown,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[

                new RaisedButton(
                  color: Colors.green,
                  onPressed: (){
                    _pageController.nextPage(duration: new Duration(milliseconds: 500), curve: Curves.easeInCubic);
                  },
                  child: new Text("Next", style: new TextStyle(color: Colors.white),),
                )
              ],
            ),
          ),
        ],
      ),

//    body: PageView.builder(
//      controller: _pageController,
//      itemBuilder: (context, position) {
//        if (position == currentPageValue.floor()) {
//          return Transform(
//            transform: Matrix4.identity()..setEntry(3, 2, 0.004)..rotateY(currentPageValue - position)..rotateZ(currentPageValue - position),
//            child: Container(
//              color: position % 2 == 0 ? Colors.blue : Colors.pink,
//              child: Center(
//                child: Text(
//                  "Page",
//                  style: TextStyle(color: Colors.white, fontSize: 22.0),
//                ),
//              ),
//            ),
//          );
//        } else if (position == currentPageValue.floor() + 1){
//          return Transform(
//            transform: Matrix4.identity()..setEntry(3, 2, 0.004)..rotateY(currentPageValue - position)..rotateZ(currentPageValue - position),
//            child: Container(
//              color: position % 2 == 0 ? Colors.blue : Colors.pink,
//              child: Center(
//                child: Text(
//                  "Page",
//                  style: TextStyle(color: Colors.white, fontSize: 22.0),
//                ),
//              ),
//            ),
//          );
//        } else {
//          return Container(
//            color: position % 2 == 0 ? Colors.blue : Colors.pink,
//            child: Center(
//              child: Text(
//                "Page",
//                style: TextStyle(color: Colors.white, fontSize: 22.0),
//              ),
//            ),
//          );
//        }
//      },
//      itemCount: 10,
//    )

    );
  }


}
