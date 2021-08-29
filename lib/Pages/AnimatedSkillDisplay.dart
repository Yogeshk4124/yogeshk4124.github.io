import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_page_transition/transition_effect.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Components/Buttons/PositionedInkWell.dart';
import 'package:portfolio/Components/SkillDetailsContainer.dart';
import 'package:portfolio/Pages/SkillsPage.dart';
import 'package:portfolio/Utility/Constants.dart';
import 'package:portfolio/Utility/keys.dart';
import 'package:portfolio/my_flutter_app_icons.dart';

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
  late AnimationController _controller, _controller2;
  String skill = '';
  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    _controller.forward();

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
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Container(
          width: 450,
          height: 450,
          child: RotationTransition(
              turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
              child: Container(
                width: 450,
                height: 450,
                alignment: Alignment.center,
                child: Stack(
                  overflow: Overflow.visible,
                  fit: StackFit.expand,
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      width: 110,
                      child: GestureDetector(
                        onTap: () {
                          _controller.reset();
                          _controller.forward();
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
                    PositionedInkWell(
                      top: 300,
                      skill: 'Flutter',
                      widget: FaIcon(
                        MyFlutterApp.mediamodifier_design__1_,
                        color: kWhite,
                        size: 55,
                      ),
                    ),
                    PositionedInkWell(
                        top: 115,
                        left: 300,
                        skill: 'Android',
                        widget: FaIcon(
                          FontAwesomeIcons.android,
                          color: kWhite,
                          size: 55,
                        )),
                    PositionedInkWell(
                      top: 115,
                      right: 300,
                      skill: 'HTML',
                      widget: FaIcon(
                        FontAwesomeIcons.html5,
                        color: kWhite,
                        size: 55,
                      ),
                    ),
                    PositionedInkWell(
                      bottom: 300,
                      skill: 'JavaScript',
                      widget: FaIcon(
                        FontAwesomeIcons.jsSquare,
                        color: kWhite,
                        size: 55,
                      ),
                    ),
                    PositionedInkWell(
                      bottom: 115,
                      right: 300,
                      skill: 'CSS',
                      widget: FaIcon(
                        FontAwesomeIcons.css3Alt,
                        color: kWhite,
                        size: 55,
                      ),
                    ),
                    PositionedInkWell(
                      bottom: 115,
                      left: 300,
                      skill: 'C++',
                      widget: Text(
                        'C++',
                        style: GoogleFonts.poppins(
                            color: kWhite,
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
                  child: Text('Select a bar to show projects',
                      style: TextStyle(
                        color: kWhite,
                      )),
                ),
        ),
      ],
    );
  }
}
