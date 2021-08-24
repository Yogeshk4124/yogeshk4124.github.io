import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Components/CustomButton.dart';
import 'package:portfolio/Components/CustomPills.dart';
import 'package:portfolio/Components/Footer.dart';
import 'package:portfolio/Components/NavBar.dart';
import 'package:portfolio/Models/project.dart';
import 'package:portfolio/Pages/SkillsPage.dart';
import 'package:portfolio/Utility/Constants.dart';

class Projects extends StatefulWidget {
  const Projects({required Key key}) : super(key: key);

  @override
  ProjectsState createState() => ProjectsState();
}

class ProjectsState extends State<Projects> {
  double h = 0;
  bool vis = false;
  String filterBy = '';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: SafeArea(
        child: Container(
          padding: (MediaQuery.of(context).size.width > 700)
              ? EdgeInsets.only(top: 20, left: 40, bottom: 10, right: 40)
              : EdgeInsets.zero,
          child: Column(
            children: [
              NavBar(page: 2),
              Expanded(
                child: Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    physics: ClampingScrollPhysics(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 40),
                          width: MediaQuery.of(context).size.width * 0.8,
                          alignment: Alignment.center,
                          child: Text(
                            'Projects',
                            style: GoogleFonts.bungee(
                              fontSize: 34,
                              color: kWhite,
                              wordSpacing: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 40),
                          width: MediaQuery.of(context).size.width * 0.8,
                          alignment: Alignment.center,
                          child: Text(
                            'Here are some of my good work.',
                            style: GoogleFonts.titilliumWeb(
                              fontSize: 18,
                              color: kDarkWhite,
                              wordSpacing: 2,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (h == 0)
                                      MediaQuery.of(context).size.width < 500
                                          ? h = 200
                                          : h = 100;
                                    else {
                                      h = 0;
                                      vis = false;
                                    }
                                  });
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Filter',
                                        style: GoogleFonts.titilliumWeb(
                                            fontSize: 22, color: kWhite),
                                      ),
                                    ),
                                    // Expanded(
                                    //   child: Container(
                                    //     height: 20,
                                    //     width: 20,
                                    //     color: Colors.transparent,
                                    //   ),
                                    // ),
                                    Container(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Icon(
                                        Icons.arrow_downward,
                                        color: kWhite,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              AnimatedContainer(
                                height: h,
                                alignment: Alignment.center,
                                width: double.maxFinite,
                                duration: Duration(seconds: 1),
                                onEnd: () {
                                  setState(() {
                                    if (h != 0) vis = true;
                                  });
                                },
                                child: Visibility(
                                  visible: vis,
                                  child: Wrap(
                                    alignment: WrapAlignment.center,
                                    runSpacing: 20,
                                    children: [
                                      CustomPill(
                                          text: 'Flutter',
                                          type: filterBy == 'Flutter' ? 2 : 1),
                                      CustomPill(
                                          text: 'Android',
                                          type: filterBy == 'Android' ? 2 : 1),
                                      CustomPill(
                                          text: 'Dart',
                                          type: filterBy == 'Dart' ? 2 : 1),
                                      CustomPill(
                                          text: 'Java',
                                          type: filterBy == 'Java' ? 2 : 1),
                                      CustomPill(
                                          text: 'HTML',
                                          type: filterBy == 'HTML' ? 2 : 1),
                                      CustomPill(
                                          text: 'CSS',
                                          type: filterBy == 'CSS' ? 2 : 1),
                                      CustomPill(
                                          text: 'JavaScript',
                                          type:
                                              filterBy == 'JavaScript' ? 2 : 1),
                                      CustomPill(
                                          text: 'Flask',
                                          type: filterBy == 'Flask' ? 2 : 1),
                                      CustomPill(
                                          text: 'Firebase',
                                          type: filterBy == 'Firebase' ? 2 : 1),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        for (int i = 0, c = 0; i < projectsList.length; i++)
                          if (filterBy == '' ||
                              projectsList[i]
                                  .tech!
                                  .contains(filterBy.toString()))
                            Card(
                              margin: EdgeInsets.only(top: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: kCardBackground,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 20),
                                  child: buildProjectRow(projectsList[i], c++)),
                            ),
                        Footer(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProjectRow(Project proj, int i) {
    List<Widget> r = [
      Visibility(
        visible: MediaQuery.of(context).size.width < 900,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                proj.title.toString(),
                style: GoogleFonts.titilliumWeb(
                    color: Colors.pinkAccent, fontSize: 40),
              ),
            ),
            Container(
              child: Text(
                proj.subtitle.toString(),
                style: GoogleFonts.titilliumWeb(color: kWhite, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 400,
        child: Image.network(
          proj.imgsrc.toString(),
          width: 200,
        ),
      ),
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(bottom: 30, left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Visibility(
              visible: MediaQuery.of(context).size.width > 900,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      proj.title.toString(),
                      style: GoogleFonts.bungee(
                          color: Colors.pinkAccent, fontSize: 36),
                    ),
                  ),
                  Container(
                    child: Text(
                      proj.subtitle.toString(),
                      style:
                          GoogleFonts.titilliumWeb(color: kWhite, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 30),
              child: Text(
                proj.summary.toString(),
                style: GoogleFonts.titilliumWeb(
                    color: kDarkWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 22,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Technology Used:',
                    style: GoogleFonts.titilliumWeb(
                      fontSize: 18,
                      color: kWhite,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Expanded(
                    child: Wrap(
                      runSpacing: 10,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.start,
                      children: [
                        for (int j = 0; j < proj.tech!.length; j++)
                          CustomPill(text: proj.tech![j], type: 0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Wrap(
              runSpacing: 20,
              direction: Axis.horizontal,
              spacing: 20,
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              children: [
                CustomButton(
                  pageRoute: proj.viewMore.toString(),
                  text: 'View More',
                  type: 1,
                ),
                CustomButton(
                  pageRoute: proj.apk.toString(),
                  text: 'Download APK',
                  type: 2,
                ),
              ],
            ),
          ],
        ),
      ),
    ];

    if (MediaQuery.of(context).size.width > 900) {
      var cr = [Expanded(flex: 2, child: r[1]), Expanded(flex: 4, child: r[2])];
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: i % 2 == 0 ? cr.reversed.toList() : cr,
      );
    } else {
      return Column(
        children: r,
      );
    }
  }
}
