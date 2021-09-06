import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogeshk4124.github.io/Components/Buttons/CustomButton.dart';
import 'package:yogeshk4124.github.io/Components/Buttons/CustomPills.dart';
import 'package:yogeshk4124.github.io/Components/Footer.dart';
import 'package:yogeshk4124.github.io/Models/project.dart';
import 'package:yogeshk4124.github.io/Utility/Colors.dart';
import 'package:yogeshk4124.github.io/Utility/Constants.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  ProjectsState createState() => ProjectsState();
}

class ProjectsState extends State<Projects>
    with SingleTickerProviderStateMixin {
  double h = 0;
  bool vis = false;
  String filterBy = '';
  bool isPlaying = false;
  late final AnimationController _languageController;

  @override
  void initState() {
    super.initState();
    _languageController = AnimationController(
      duration: Duration(milliseconds: 450),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _languageController.dispose();
    super.dispose();
  }

  void _handleOnPressed() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying ? _languageController.forward() : _languageController.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackground,
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
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 40, right: 40, bottom: 5),
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
                      _handleOnPressed();
                    },
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Languages',
                            style: GoogleFonts.titilliumWeb(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: kDeepBlue,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: RotationTransition(
                            turns: Tween(begin: 0.0, end: 0.5)
                                .animate(_languageController),
                            child: Icon(
                              Icons.arrow_downward,
                              color: kDeepBlue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  AnimatedContainer(
                    height: h,
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    duration: Duration(milliseconds: 450),
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
                            type: 0,
                            selected: filterBy == 'Flutter',
                            onTap: () {
                              setState(() {
                                filterBy = 'Flutter';
                              });
                            },
                          ),
                          CustomPill(
                            text: 'Android',
                            type: 0,
                            selected: filterBy == 'Android',
                            onTap: () {
                              setState(() {
                                filterBy = 'Android';
                              });
                            },
                          ),
                          CustomPill(
                            text: 'Dart',
                            type: 0,
                            selected: filterBy == 'Dart',
                            onTap: () {
                              setState(() {
                                filterBy = 'Dart';
                              });
                            },
                          ),
                          CustomPill(
                            text: 'Java',
                            type: 0,
                            selected: filterBy == 'Java',
                            onTap: () {
                              setState(() {
                                filterBy = 'Java';
                              });
                            },
                          ),
                          CustomPill(
                            text: 'HTML',
                            type: 0,
                            selected: filterBy == 'HTML',
                            onTap: () {
                              setState(() {
                                filterBy = 'HTML';
                              });
                            },
                          ),
                          CustomPill(
                            text: 'CSS',
                            type: 0,
                            selected: filterBy == 'CSS',
                            onTap: () {
                              setState(() {
                                filterBy = 'CSS';
                              });
                            },
                          ),
                          CustomPill(
                            text: 'JavaScript',
                            type: 0,
                            selected: filterBy == 'JavaScript',
                            onTap: () {
                              setState(() {
                                filterBy = 'JavaScript';
                              });
                            },
                          ),
                          CustomPill(
                            text: 'Flask',
                            type: 0,
                            selected: filterBy == 'Flask',
                            onTap: () {
                              setState(() {
                                filterBy = 'Flask';
                              });
                            },
                          ),
                          CustomPill(
                            text: 'Firebase',
                            type: 0,
                            selected: filterBy == 'Firebase',
                            onTap: () {
                              setState(() {
                                filterBy = 'Firebase';
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            for (int i = 0, c = 0; i < projectsList.length; i++)
              if (filterBy == '' ||
                  projectsList[i].tech!.contains(filterBy.toString()))
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, bottom: 5),
                  child: Card(
                    margin: EdgeInsets.only(top: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: kCardBackground,
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        child: buildProjectRow(projectsList[i], c++)),
                  ),
                ),
            Footer(),
          ],
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
                style: GoogleFonts.bungee(
                    color: i % 2 == 0 ? Colors.pinkAccent : kDeepBlue,
                    fontSize: 40),
                textAlign: TextAlign.center,
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
      ImageSlideshow(
        width: 200,
        height: 400,
        isLoop: true,
        initialPage: 0,
        indicatorColor: Colors.blue,
        indicatorBackgroundColor: Colors.grey,
        children: [
          for (int i = 0; i < proj.imgsrc!.length.toInt(); i++)
            Image.network(
              proj.imgsrc![i],
              loadingBuilder: (a, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(
                  height: 400,
                  width: 200,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      Text(
                        'Loading Image...',
                        style: GoogleFonts.titilliumWeb(
                            fontSize: 20, color: kWhite),
                      ),
                    ],
                  ),
                );
              },
              errorBuilder: (a, child, error) {
                return Container(
                  height: 400,
                  width: 200,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error_outline,
                        color: kWhite,
                      ),
                      Text(
                        'Error...',
                        style: GoogleFonts.titilliumWeb(
                            fontSize: 20, color: kWhite),
                      ),
                    ],
                  ),
                );
              },
            ),
        ],
        onPageChanged: (value) {},
        autoPlayInterval: 3000,
      ),
      // Container(
      //   height: 400,
      //   child: Image.network(
      //     proj.imgsrc.toString(),
      //     width: 200,
      //   ),
      // ),
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
                          color: i % 2 == 0 ? Colors.pinkAccent : kDeepBlue,
                          fontSize: 36),
                    ),
                  ),
                  Container(
                    child: Text(
                      proj.subtitle.toString(),
                      style: GoogleFonts.titilliumWeb(
                          color: kDarkWhite, fontSize: 16),
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
                    color: kWhite.withOpacity(0.9),
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
                          CustomPill(
                            text: proj.tech![j],
                            type: 1,
                            onTap: () {
                              filterBy = proj.tech![j];
                            },
                          ),
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
                  background: i % 2 == 0 ? Colors.pinkAccent : kDeepBlue,
                ),
                CustomButton(
                  pageRoute: proj.apk.toString(),
                  text: 'Download APK',
                  type: 2,
                  background: i % 2 == 0 ? Colors.pinkAccent : kDeepBlue,
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
