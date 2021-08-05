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
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: widget.hover ? Colors.transparent : getPillColor(widget.text),
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Text(
        widget.text,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  getPillColor(String text) {
    switch (text) {
      case 'Dart':
        return Colors.lightBlueAccent;
      case 'Flutter':
        return Colors.blue;
      case 'C++':
        return Colors.redAccent;
      case 'Android Studio':
        return Colors.lightGreenAccent;
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
