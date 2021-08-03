import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPill extends StatefulWidget {
  String text;
  bool hover;
  CustomPill({required this.text, required this.hover});
  @override
  _CustomPillState createState() => _CustomPillState();
}

class _CustomPillState extends State<CustomPill> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      margin: EdgeInsets.only(left: 30),
      decoration: BoxDecoration(
        color: widget.hover ? Colors.transparent : getPillColor(widget.text),
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Text(
        widget.text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  getPillColor(String text) {
    switch (text) {
      case 'Dart':
        return Colors.blue;
      case 'Flutter':
        return Color(0xff3FBEF7);
      case 'C++':
        return Colors.redAccent;
      case 'Android Studio':
        return Colors.greenAccent;
      case 'HTML':
        return Colors.deepOrangeAccent;
      case 'CSS':
        return Colors.indigoAccent;
      case 'JavaScript':
        return Colors.yellowAccent;
      case 'Java':
        return Colors.pinkAccent;
      case 'Python':
        return Colors.lightBlueAccent;
    }
  }
}
