import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Utility/Constants.dart';
import 'package:portfolio/Utility/keys.dart';

class PositionedInkWell extends StatefulWidget {
  final Widget widget;
  final double? left, right, bottom, top;
  final String skill;
  const PositionedInkWell(
      {Key? key,
      required this.widget,
      required this.skill,
      this.left,
      this.right,
      this.bottom,
      this.top})
      : super(key: key);

  @override
  _PositionedInkWellState createState() => _PositionedInkWellState();
}

class _PositionedInkWellState extends State<PositionedInkWell> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: widget.bottom,
      left: widget.left,
      right: widget.right,
      top: widget.top,
      child: InkWell(
        onTap: () {
          skillKey.currentState!.skill = widget.skill;
          skillKey.currentState!.setState(() {});
        },
        focusColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        onHover: (c) {},
        child: Container(
            decoration: BoxDecoration(
              color: kCardBackground,
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            width: 100,
            height: 100,
            alignment: Alignment.center,
            child: widget.widget),
      ),
    );
  }
}
