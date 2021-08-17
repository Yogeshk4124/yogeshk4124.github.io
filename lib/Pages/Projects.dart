import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Custom/CustomButton.dart';
import 'package:portfolio/Custom/CustomPills.dart';
import 'package:portfolio/CustomBuilder.dart';
import 'package:portfolio/NavBar.dart';
import 'package:portfolio/Pages/Skills.dart';

import '../project.dart';

class Projects extends StatefulWidget {
  // const Projects({Key key}) : super(key: key);

  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  List<projects> proj = [];
  double h = 0;
  bool vis = false;
  @override
  void initState() {
    super.initState();
    proj = CustomBuilder.getProjectList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: Container(
          padding: (MediaQuery.of(context).size.width > 700)
              ? EdgeInsets.only(top: 20, left: 40, bottom: 10, right: 40)
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
                page: 2,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.white, width: 1),
                      right: BorderSide(color: Colors.white, width: 1),
                    ),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    physics: ClampingScrollPhysics(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width * 0.8,
                          alignment: Alignment.center,
                          child: Text(
                            'Here    are    some    of    my    good    work.',
                            style: GoogleFonts.monoton(
                              fontSize: 34,
                              color: Colors.white,
                              wordSpacing: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(color: Colors.white, width: 1),
                            ),
                          ),
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
                                            fontSize: 22, color: Colors.white),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Icon(
                                        Icons.arrow_downward,
                                        color: Colors.white,
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
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                        color: Colors.white, width: 1),
                                    bottom: BorderSide(
                                        color: Colors.white, width: 1),
                                  ),
                                ),
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
                                      CustomPill(text: 'Flutter', hover: true),
                                      CustomPill(text: 'Android', hover: true),
                                      CustomPill(text: 'Dart', hover: true),
                                      CustomPill(text: 'C++', hover: true),
                                      CustomPill(text: 'Java', hover: true),
                                      CustomPill(text: 'HTML', hover: true),
                                      CustomPill(text: 'CSS', hover: true),
                                      CustomPill(
                                          text: 'JavaScript', hover: true),
                                      CustomPill(text: 'Flask', hover: true),
                                      CustomPill(text: 'Firebase', hover: true),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        for (int i = 0; i < proj.length; i++)
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom:
                                    BorderSide(color: Colors.white, width: 1),
                              ),
                            ),
                            // height: 450,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: buildProjectRow(proj[i], i),
                          ),
                        CustomBuilder.buildContactFooter(),
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

  Widget buildProjectRow(projects proj, int i) {
    List<Widget> r = [
      Visibility(
        visible: MediaQuery.of(context).size.width < 900,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                proj.title.toString(),
                style:
                    GoogleFonts.titilliumWeb(color: Colors.white, fontSize: 40),
              ),
            ),
            Container(
              child: Text(
                proj.subtitle.toString(),
                style:
                    GoogleFonts.titilliumWeb(color: Colors.white, fontSize: 16),
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
                      style:
                          GoogleFonts.bungee(color: Colors.white, fontSize: 40),
                    ),
                  ),
                  Container(
                    child: Text(
                      proj.subtitle.toString(),
                      style: GoogleFonts.titilliumWeb(
                          color: Colors.white, fontSize: 16),
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
                    color: Colors.white,
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
                      color: Colors.white,
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
                          CustomPill(text: proj.tech![j], hover: false),
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
                CustomButton(
                  pageRoute: proj.code.toString(),
                  text: 'Download Code',
                  type: 3,
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
