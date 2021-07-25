import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

  @override
  void initState() {
    super.initState();
    proj.add(projects(
      date: DateTime.now(),
      imgsrc:
          'https://raw.githubusercontent.com/Yogeshk4124/Card-Space/main/screenshots/CardSpaceLogo.png',
      summary:
          'A secured cross-platfom application that allows the user to save their cards like (Bank cards, Personal Identification Cards, etc) in a highly secured format. These card can be viewed by user anytime. The main problem it solves is that the user does not need to carry all the card while he can carry a single mobile phone with our installed.Take control of your cards with this offline card manager (no need to create account or login online).It makes card management smart, simple and secure.',
      title: 'Card-Space',
    ));
    proj.add(projects(
      date: DateTime.now(),
      imgsrc:
          'https://raw.githubusercontent.com/Yogeshk4124/Card-Space/main/screenshots/CardSpaceLogo.png',
      summary:
          'A secured cross-platfom application that allows the user to save their cards like (Bank cards, Personal Identification Cards, etc) in a highly secured format. These card can be viewed by user anytime. The main problem it solves is that the user does not need to carry all the card while he can carry a single mobile phone with our installed.Take control of your cards with this offline card manager (no need to create account or login online).It makes card management smart, simple and secure.',
      title: 'Card-Space',
    ));
    proj.add(projects(
      date: DateTime.now(),
      imgsrc:
          'https://raw.githubusercontent.com/Yogeshk4124/Card-Space/main/screenshots/CardSpaceLogo.png',
      summary:
          'A secured cross-platfom application that allows the user to save their cards like (Bank cards, Personal Identification Cards, etc) in a highly secured format. These card can be viewed by user anytime. The main problem it solves is that the user does not need to carry all the card while he can carry a single mobile phone with our installed.Take control of your cards with this offline card manager (no need to create account or login online).It makes card management smart, simple and secure.',
      title: 'Card-Space',
    ));
    proj.add(projects(
      date: DateTime.now(),
      imgsrc:
          'https://raw.githubusercontent.com/Yogeshk4124/Card-Space/main/screenshots/CardSpaceLogo.png',
      summary:
          'A secured cross-platfom application that allows the user to save their cards like (Bank cards, Personal Identification Cards, etc) in a highly secured format. These card can be viewed by user anytime. The main problem it solves is that the user does not need to carry all the card while he can carry a single mobile phone with our installed.Take control of your cards with this offline card manager (no need to create account or login online).It makes card management smart, simple and secure.',
      title: 'Card-Space',
    ));
    for (int i = 0; i < proj.length; i++) {
      buttonBG.add(black);
      buttonFG.add(Colors.white);
      buttonShadow.add(Colors.white);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: Container(
          padding: (MediaQuery.of(context).size.width > 700)
              ? EdgeInsets.only(top: 20, left: 40, right: 40)
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
      children: [
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(color: Colors.white),
              ),
            ),
            child: Image.network(
              proj.imgsrc.toString(),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            padding: EdgeInsets.all(20),
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
                InkWell(
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
            padding: EdgeInsets.all(20),
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
                InkWell(
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
                )
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
            ),
          ),
        ),
      ],
    );
  }
}
