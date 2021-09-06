import 'dart:math';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:yogeshk4124.github.io/Components/NavBar.dart';
import 'package:yogeshk4124.github.io/Utility/Colors.dart';
import 'MyHomePage.dart';
import 'ProjectsPage.dart';
import 'Resume.dart';
import 'SkillsPage.dart';

class PageOutlook extends StatefulWidget {
  const PageOutlook({Key? key}) : super(key: key);

  @override
  PageOutlookState createState() => PageOutlookState();
}

const s = "HomePage";
// ignore: non_constant_identifier_names
var HomePage = MyHomePage(
  title: s,
);
var ProjectPage = Projects();

class PageOutlookState extends State<PageOutlook> {
  int pageNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: SafeArea(
        child: Container(
          color: kBackground,
          child: Column(
            children: [
              NavBar(
                page: pageNumber,
              ),
              Expanded(
                child: buildCards(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCards() => PageTransitionSwitcher(
        duration: Duration(milliseconds: 3000),
        reverse: Random().nextInt(2) % 2 == 0,
        transitionBuilder: (child, animation, secondaryAnimation) =>
            SharedAxisTransition(
                fillColor: kCardBackground,
                child: child,
                animation: animation,
                secondaryAnimation: secondaryAnimation,
                transitionType: SharedAxisTransitionType.horizontal),
        child: getPage(pageNumber),
      );

  getPage(pageNumber) {
    if (pageNumber == 0)
      return HomePage;
    else if (pageNumber == 1)
      return Skills();
    else if (pageNumber == 2)
      return ProjectPage;
    else
      return Resume();
  }
}
