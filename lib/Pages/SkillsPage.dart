import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Components/Footer.dart';
import 'package:portfolio/Components/NavBar.dart';
import 'package:portfolio/Pages/AnimatedSkillDisplay.dart';
import 'package:portfolio/Plugin/BarChart.dart';
import 'package:portfolio/Utility/Constants.dart';
import 'package:portfolio/Utility/keys.dart';

Color black = Color(0xff121212);

class Skills extends StatefulWidget {
  // const Skills({Key key}) : super(key: key);

  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: kBackground,
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height - 80),
            child: IntrinsicHeight(
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 40),
                      width: MediaQuery.of(context).size.width * 0.8,
                      alignment: Alignment.center,
                      child: Text(
                        'Skills',
                        style: GoogleFonts.bungee(
                          fontSize: 34,
                          color: kWhite,
                          wordSpacing: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        alignment: Alignment.center,
                        child: Text(
                          'On a long journey, Need to learn a lot of new things.',
                          style: GoogleFonts.titilliumWeb(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kDarkWhite,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: AnimatedSkillDisplay(
                        key: skillKey,
                      ),
                      //  BarChartSample1(
                      //     chartWidth: 500, chartHeight: 400)
                    ),
                    Footer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
    // Text(
    //   'check',
    //   style: TextStyle(color: Colors.white),
    // )
  }
}
