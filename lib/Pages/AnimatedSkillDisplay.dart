import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogeshk4124.github.io/Components/SkillDetailsContainer.dart';
import 'package:yogeshk4124.github.io/Utility/Colors.dart';

import '../my_flutter_app_icons.dart';

const double degrees2Radians = math.pi / 180.0;

class AnimatedSkillDisplay extends StatefulWidget {
  AnimatedSkillDisplay({
    Key? key,
  }) : super(key: key);
  @override
  AnimatedSkillDisplayState createState() => AnimatedSkillDisplayState();
}

class AnimatedSkillDisplayState extends State<AnimatedSkillDisplay>
    with TickerProviderStateMixin {
  late AnimationController _controller1, _controller2;
  String skill = '';
  int selected = 0;
  int hover = 0;
  // List sel = [false, false, false, false, false, false];
  @override
  void initState() {
    _controller1 = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _controller2 = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    )
      ..forward()
      ..addListener(() {
        if (_controller2.isCompleted) {
          _controller2.repeat();
        }
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Container(
          width: 450,
          height: 450,
          child: RotationTransition(
              turns: Tween(begin: 0.0, end: 1.0).animate(_controller1),
              child: Container(
                width: 450,
                height: 450,
                alignment: Alignment.center,
                child: Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.expand,
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      width: 110,
                      child: GestureDetector(
                        onTap: () {
                          _controller1.reset();
                          _controller1.forward();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: kCardBackground,
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                          ),
                          width: 110,
                          height: 110,
                          alignment: Alignment.topCenter,
                          child: AnimatedBuilder(
                            animation: _controller2,
                            builder: (context, child) => Transform.translate(
                              offset: Offset(
                                  0,
                                  5 *
                                      2 *
                                      (0.5 -
                                          (0.5 -
                                                  Curves.linear.transform(
                                                      _controller2.value))
                                              .abs())),
                              child: child,
                            ),
                            child: Image.network(
                              'https://img.icons8.com/bubbles/4x/brain.png',
                              width: 110,
                              height: 110,
                            ),
                          ),
                        ),
                      ),
                    ),
                    PositionInkWell(
                      null,
                      300,
                      null,
                      null,
                      'Flutter',
                      1,
                      FaIcon(
                        MyFlutterApp.mediamodifier_design__1_,
                        color: hover == 1 ? kPink : kWhite,
                        size: 55,
                      ),
                    ),
                    PositionInkWell(
                      null,
                      115,
                      300,
                      null,
                      'Android',
                      2,
                      FaIcon(
                        FontAwesomeIcons.android,
                        color: hover == 2 ? kPink : kWhite,
                        size: 55,
                      ),
                    ),
                    PositionInkWell(
                      null,
                      115,
                      null,
                      300,
                      'HTML',
                      3,
                      FaIcon(
                        FontAwesomeIcons.html5,
                        color: hover == 3 ? kPink : kWhite,
                        size: 55,
                      ),
                    ),
                    PositionInkWell(
                      300,
                      null,
                      null,
                      null,
                      'JavaScript',
                      4,
                      FaIcon(
                        FontAwesomeIcons.jsSquare,
                        color: hover == 4 ? kPink : kWhite,
                        size: 55,
                      ),
                    ),
                    PositionInkWell(
                      115,
                      null,
                      null,
                      300,
                      'CSS',
                      5,
                      FaIcon(
                        FontAwesomeIcons.css3Alt,
                        color: hover == 5 ? kPink : kWhite,
                        size: 55,
                      ),
                    ),
                    PositionInkWell(
                      115,
                      null,
                      300,
                      null,
                      'C++',
                      6,
                      Text(
                        'C++',
                        style: GoogleFonts.poppins(
                            color: hover == 6 ? kPink : kWhite,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )),
        ),
        AnimatedContainer(
          margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          duration: Duration(seconds: 1),
          height: 400, //height
          width: 300, //width
          curve: Curves.linear,
          decoration: BoxDecoration(
            border: Border.all(color: kDarkWhite, width: 2),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          // child: CustomBuilder.ListbuildHandler(skill),
          child: skill != ''
              ? SkillDetailsContainer(skill: skill)
              : Container(
                  alignment: Alignment.center,
                  child: Text('Select a language to show projects.',
                      style: TextStyle(
                        color: kWhite,
                      )),
                ),
        ),
      ],
    );
  }

  Positioned PositionInkWell(bottom, top, left, right, mskill, idx, widget) {
    Color bg = kCardBackground;
    return Positioned(
      bottom: bottom,
      left: left,
      right: right,
      top: top,
      child: InkWell(
        onTap: () {
          setState(() {
            skill = mskill;
            hover = 0;
            selected = idx;
          });
        },
        focusColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        onHover: (c) {
          setState(() {
            if (idx != selected && c)
              hover = idx;
            else
              hover = 0;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: selected == idx ? kPink : kCardBackground,
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          width: 100,
          height: 100,
          alignment: Alignment.center,
          child: widget,
        ),
      ),
    );
  }
}
