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
          child: Column(
            children: [
              NavBar(
                page: 2,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(color: Colors.white, width: 1),
                            right: BorderSide(color: Colors.white, width: 1),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Here are some of my good work.',
                          // 'Skills comes from consistent and Deliberate Practice',
                          style: GoogleFonts.monoton(
                            fontSize: 34,
                            color: Colors.white,
                            wordSpacing: 15,
                          ),
                        ),
                      ),
                      for (int i = 0; i < proj.length; i++)
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                          ),
                          padding: EdgeInsets.only(left: 20),
                          child: buildProjectRow(proj[i], i),
                        ),
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

  Widget buildProjectRow(projects proj, int i) {
    List<Widget> r = [
      Expanded(
        flex: 2,
        child: Container(
          height: 600,
          padding: EdgeInsets.all(50),
          child: Image.network(
            proj.imgsrc.toString(),
            width: 200,
          ),
        ),
      ),
      Expanded(
        flex: 4,
        child: Container(
          height: 600,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  proj.title.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
              Container(
                child: Text(
                  proj.title.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  proj.summary.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Technology Used:',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(pageRoute: '', text: 'View More'),
                  CustomButton(pageRoute: '', text: 'Download APK'),
                  CustomButton(pageRoute: '', text: 'Download Code'),
                ],
              ),
            ],
          ),
        ),
      ),
    ];

    if (MediaQuery.of(context).size.width > 900)
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: i % 2 == 0 ? r.reversed.toList() : r,
      );
    else
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 350,
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              border: Border(
                right: MediaQuery.of(context).size.width > 900
                    ? BorderSide(color: Colors.white)
                    : BorderSide.none,
              ),
            ),
            alignment: Alignment.center,
            child: Image.network(
              proj.imgsrc.toString(),
              width: 200,
            ),
          ),
          Container(
            // height: 450,
            padding: EdgeInsets.only(left: 40, right: 40, bottom: 30),
            alignment: Alignment.center,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    proj.title.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
                Container(
                  child: Text(
                    proj.title.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    proj.summary.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Technology Used:',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
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
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 2),
                                margin: EdgeInsets.only(left: 30),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Text(
                                  proj.tech![j],
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Wrap(
                  spacing: 20,
                  alignment: WrapAlignment.center,
                  children: [
                    CustomButton(pageRoute: '', text: 'View More'),
                    CustomButton(pageRoute: '', text: 'Download APK'),
                    CustomButton(pageRoute: '', text: 'Download Code'),
                  ],
                ),
              ],
            ),
          )
        ],
      );
  }
}
