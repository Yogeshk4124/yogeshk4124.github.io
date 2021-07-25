import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfoliom/CustomBuilder.dart';
import 'package:portfoliom/NavBar.dart';
import 'package:portfoliom/Pages/Skills.dart';

import '../project.dart';

class Projects extends StatefulWidget {
  // const Projects({Key key}) : super(key: key);

  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  List<projects> proj = [];
  List<Color> buttonBG = [];
  List<Color> buttonFG = [];
  List<Color> buttonShadow = [];
  List<Color> buttonBG1 = [];
  List<Color> buttonFG1 = [];
  List<Color> buttonShadow1 = [];
  List<Color> buttonBG2 = [];
  List<Color> buttonFG2 = [];
  List<Color> buttonShadow2 = [];

  @override
  void initState() {
    super.initState();
    proj = CustomBuilder.getProjectList();
    for (int i = 0; i < proj.length; i++) {
      buttonBG.add(black);
      buttonFG.add(Colors.white);
      buttonShadow.add(Colors.white);
      buttonBG1.add(black);
      buttonFG1.add(Colors.white);
      buttonShadow1.add(Colors.white);
      buttonBG2.add(black);
      buttonFG2.add(Colors.white);
      buttonShadow2.add(Colors.white);
    }
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
              NavBar(),
              Expanded(
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
                          'Here are some of my good work.',
                          // 'Skills comes from consistent and Deliberate Practice',
                          style: TextStyle(
                            fontSize: 34,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      for (int i = 0; i < proj.length; i++)
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                          ),
                          padding: EdgeInsets.only(left: 20),
                          child: (i % 2 == 0)
                              ? buildProjectRowLeft(proj[i], i)
                              : buildProjectRowRight(proj[i], i),
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

  Row buildProjectRowRight(projects proj, int i) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Container(
            height: 600,
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(color: Colors.white),
              ),
            ),
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
            padding: EdgeInsets.symmetric(horizontal: 20),
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
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    proj.summary.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: InkWell(
                        onTap: () {},
                        onHover: (val) {
                          setState(() {
                            if (val) {
                              buttonBG[i] = Colors.white;
                              buttonFG[i] = Colors.black87;
                              buttonShadow[i] = Colors.black87;
                            } else {
                              buttonBG[i] = black;
                              buttonFG[i] = Colors.white;
                              buttonShadow[i] = Colors.white;
                            }
                          });
                        },
                        child: Container(
                          width: 150,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: buttonBG[i],
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                color: buttonShadow[i],
                                offset: const Offset(
                                  5.0,
                                  4.0,
                                ),
                                spreadRadius: 2.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: buttonShadow[i],
                                offset: const Offset(0.0, 0.0),
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          child: Text(
                            'View More',
                            style: TextStyle(color: buttonFG[i], fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: InkWell(
                        onTap: () {},
                        onHover: (val) {
                          setState(() {
                            if (val) {
                              buttonBG1[i] = Colors.white;
                              buttonFG1[i] = Colors.black87;
                              buttonShadow1[i] = Colors.black87;
                            } else {
                              buttonBG1[i] = black;
                              buttonFG1[i] = Colors.white;
                              buttonShadow1[i] = Colors.white;
                            }
                          });
                        },
                        child: Container(
                          width: 150,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: buttonBG1[i],
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                color: buttonShadow1[i],
                                offset: const Offset(
                                  5.0,
                                  4.0,
                                ),
                                spreadRadius: 2.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: buttonShadow1[i],
                                offset: const Offset(0.0, 0.0),
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          child: Text(
                            'Download APK',
                            style: TextStyle(color: buttonFG1[i], fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: InkWell(
                        onTap: () {},
                        onHover: (val) {
                          setState(() {
                            if (val) {
                              buttonBG2[i] = Colors.white;
                              buttonFG2[i] = Colors.black87;
                              buttonShadow2[i] = Colors.black87;
                            } else {
                              buttonBG2[i] = black;
                              buttonFG2[i] = Colors.white;
                              buttonShadow2[i] = Colors.white;
                            }
                          });
                        },
                        child: Container(
                          width: 150,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: buttonBG2[i],
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                color: buttonShadow2[i],
                                offset: const Offset(
                                  5.0,
                                  4.0,
                                ),
                                spreadRadius: 2.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: buttonShadow2[i],
                                offset: const Offset(0.0, 0.0),
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          child: Text(
                            'Download Code',
                            style: TextStyle(color: buttonFG2[i], fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Row buildProjectRowLeft(projects proj, int i) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  proj.title.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  proj.summary.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: InkWell(
                        onTap: () {},
                        onHover: (val) {
                          setState(() {
                            if (val) {
                              buttonBG[i] = Colors.white;
                              buttonFG[i] = Colors.black87;
                              buttonShadow[i] = Colors.black87;
                            } else {
                              buttonBG[i] = black;
                              buttonFG[i] = Colors.white;
                              buttonShadow[i] = Colors.white;
                            }
                          });
                        },
                        child: Container(
                          width: 150,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: buttonBG[i],
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                color: buttonShadow[i],
                                offset: const Offset(
                                  5.0,
                                  4.0,
                                ),
                                spreadRadius: 2.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: buttonShadow[i],
                                offset: const Offset(0.0, 0.0),
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          child: Text(
                            'View More',
                            style: TextStyle(color: buttonFG[i], fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: InkWell(
                        onTap: () {},
                        onHover: (val) {
                          setState(() {
                            if (val) {
                              buttonBG1[i] = Colors.white;
                              buttonFG1[i] = Colors.black87;
                              buttonShadow1[i] = Colors.black87;
                            } else {
                              buttonBG1[i] = black;
                              buttonFG1[i] = Colors.white;
                              buttonShadow1[i] = Colors.white;
                            }
                          });
                        },
                        child: Container(
                          width: 150,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: buttonBG1[i],
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                color: buttonShadow1[i],
                                offset: const Offset(
                                  5.0,
                                  4.0,
                                ),
                                spreadRadius: 2.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: buttonShadow1[i],
                                offset: const Offset(0.0, 0.0),
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          child: Text(
                            'Download APK',
                            style: TextStyle(color: buttonFG1[i], fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: InkWell(
                        onTap: () {},
                        onHover: (val) {
                          setState(() {
                            if (val) {
                              buttonBG2[i] = Colors.white;
                              buttonFG2[i] = Colors.black87;
                              buttonShadow2[i] = Colors.black87;
                            } else {
                              buttonBG2[i] = black;
                              buttonFG2[i] = Colors.white;
                              buttonShadow2[i] = Colors.white;
                            }
                          });
                        },
                        child: Container(
                          width: 150,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: buttonBG2[i],
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                color: buttonShadow2[i],
                                offset: const Offset(
                                  5.0,
                                  4.0,
                                ),
                                spreadRadius: 2.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: buttonShadow2[i],
                                offset: const Offset(0.0, 0.0),
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          child: Text(
                            'Download Code',
                            style: TextStyle(color: buttonFG2[i], fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(color: Colors.white),
              ),
            ),
            child: Image.network(
              proj.imgsrc.toString(),
              width: 250,
              height: 600,
            ),
          ),
        ),
      ],
    );
  }
}
