import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Pages/Skills.dart';

class CustomButton extends StatefulWidget {
  String pageRoute, text;
  CustomButton({required this.pageRoute, required this.text});
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  Color shadow = Colors.white;
  Color bg = black;
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(top: 30),
      child: InkWell(
        onTap: () =>
            Navigator.of(context).pushReplacementNamed(widget.pageRoute),
        onHover: (val) {
          setState(() {
            if (val) {
              bg = shadow;
              shadow = black;
            } else {
              shadow = Colors.white;
              bg = black;
            }
          });
        },
        child: Container(
          width: 150,
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: shadow,
            border: shadow == black ? Border.all(color: bg) : Border(),
            borderRadius: BorderRadius.circular(10),
            // boxShadow: [
            //   BoxShadow(
            //     color: shadow,
            //     offset: const Offset(
            //       5.0,
            //       4.0,
            //     ),
            //     spreadRadius: 2.0,
            //   ), //BoxShadow
            //   BoxShadow(
            //     color: shadow,
            //     offset: const Offset(0.0, 0.0),
            //     spreadRadius: 0.0,
            //   ), //BoxShadow
            // ],
          ),
          child: Text(
            widget.text,
            style: TextStyle(color: bg, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
