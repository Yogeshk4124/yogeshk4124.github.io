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
  Color textColor = Colors.white, bgColor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onHover: (inside) {
        setState(() {
          if (inside) {
            textColor = Colors.black;
            bgColor = getPillColor(widget.text);
          } else {
            textColor = Colors.white;
            bgColor = Colors.transparent;
          }
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: widget.hover ? 20 : 10, vertical: widget.hover ? 8 : 3),
        margin: EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
          color: widget.hover ? bgColor : getPillColor(widget.text),
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        child: Text(
          widget.text,
          style: TextStyle(color: widget.hover ? textColor : Colors.black),
        ),
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
      case 'Android':
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
      case 'Firebase':
        return Colors.limeAccent;
      case 'Flask':
        return Colors.deepPurpleAccent;
    }
  }
}
