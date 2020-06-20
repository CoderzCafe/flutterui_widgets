
import 'package:flutter/material.dart';
import '../utils/custom_icon_icons.dart' as custom_icon;

class UseCustomIcon extends StatefulWidget {
  @override
  _UseCustomIconState createState() => _UseCustomIconState();
}

class _UseCustomIconState extends State<UseCustomIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: new Icon(custom_icon.CustomIcon.bird, size: 150, color: Colors.black45,),
    );
  }
}
