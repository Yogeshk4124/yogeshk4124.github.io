import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:portfoliom/CustomBuilder.dart';
import 'package:portfoliom/NavBar.dart';

import '../BarChart.dart';

Color black = Color(0xff121212);

class Skills extends StatefulWidget {
  // const Skills({Key key}) : super(key: key);

  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: Container(
          margin: (MediaQuery.of(context).size.width > 700)
              ? EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 10)
              : EdgeInsets.zero,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1),
          ),
          child: Column(
            children: [
              NavBar(),
              Expanded(
                flex: 10,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'On a long journey, Need to learn a lot of new things.',
                          style: TextStyle(
                            fontSize: 34,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      BarChartSample1(chartWidth: 500, chartHeight: 400),

                      // Container(
                      //   decoration: BoxDecoration(
                      //     border: Border.all(color: Colors.white, width: 1),
                      //   ),
                      //   padding:
                      //       EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                      //   child: Column(
                      //     mainAxisSize: MainAxisSize.min,
                      //     children: [
                      //       buildSkillBar('Flutter', 80),
                      //       buildSkillBar('C++', 80),
                      //       buildSkillBar('Python', 70),
                      //       buildSkillBar('Java', 70),
                      //       buildSkillBar('Html', 80),
                      //       buildSkillBar('CSS', 70),
                      //       buildSkillBar('JavaScript', 60),
                      //     ],
                      //   ),
                      // ),
                      CustomBuilder.buildContactFooter(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildSkillBar(String text, int percent) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 18),
            // textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 10,
          ),
          FAProgressBar(
            currentValue: percent,
            displayText: '%',
            backgroundColor: black,
            // progressColor: Color(0xffbb86fc),
            progressColor: Colors.grey,
            displayTextStyle: TextStyle(color: Colors.black),
            border: Border(
              right: BorderSide(color: Colors.white),
              bottom: BorderSide(color: Colors.white),
              top: BorderSide(color: Colors.white),
              left: BorderSide(color: Colors.white),
            ),
            animatedDuration: Duration(seconds: 1),
          ),
        ],
      ),
    );
  }
}
