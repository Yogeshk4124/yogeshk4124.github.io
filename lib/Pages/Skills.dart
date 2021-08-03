import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/CustomBuilder.dart';
import 'package:portfolio/NavBar.dart';

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
            border: Border(
              left: BorderSide(color: Colors.white, width: 1),
              right: BorderSide(color: Colors.white, width: 1),
            ),
          ),
          child: Column(
            children: [
              NavBar(
                page: 1,
              ),
              Expanded(
                flex: 10,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide.none,
                            bottom: BorderSide(color: Colors.white, width: 1),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'On a long journey, Need to learn a lot of new things.',
                          style: GoogleFonts.monoton(
                            fontSize: 34,
                            color: Colors.white,
                            wordSpacing: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      BarChartSample1(chartWidth: 500, chartHeight: 400),
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
}
