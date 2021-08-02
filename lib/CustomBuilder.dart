import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/project.dart';

List<Color> myColor = [
  Colors.deepOrangeAccent,
  Colors.orangeAccent,
  Colors.pinkAccent,
  Colors.redAccent,
  Colors.blueAccent,
  Colors.indigoAccent,
  Colors.lightBlueAccent,
  Colors.purpleAccent,
];
int headingColor = 0;

class CustomBuilder {
  static int colorgenerator() {
    int x = 0;
    while (x == headingColor) {
      x = Random().nextInt(8);
    }
    headingColor = x;
    return x;
  }

  static Container buildContactFooter() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1),
      ),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 35,
            alignment: Alignment.center,
            child: FaIcon(
              FontAwesomeIcons.instagram,
              color: Colors.white,
              size: 25,
            ),
          ),
          Container(
            width: 35,
            alignment: Alignment.center,
            child: FaIcon(
              FontAwesomeIcons.linkedin,
              color: Colors.white,
              size: 25,
            ),
          ),
          Container(
            width: 35,
            alignment: Alignment.center,
            child: FaIcon(
              FontAwesomeIcons.envelope,
              color: Colors.white,
              size: 25,
            ),
          ),
          Spacer(),
          Text(
            'Made with love',
            style: TextStyle(color: Colors.white),
          ),
          Container(
            width: 20,
          )
        ],
      ),
    );
  }

  static List<projects> getProjectList() {
    List<projects> proj = [];
    proj.add(projects(
      imgsrc:
          'https://raw.githubusercontent.com/Yogeshk4124/Card-Space/main/screenshots/4.png',
      summary:
          'A secured cross-platform application that allows the user to save their cards like (Bank cards, Personal Identification Cards, etc) in a highly secured format. These card can be viewed by user anytime. The main problem it solves is that the user does not need to carry all the card while he can carry a single mobile phone with our installed.Take control of your cards with this offline card manager (no need to create account or login online).It makes card management smart, simple and secure.',

      // 'A simple app for managing our day-to-day life cards like bank cards, business cards, organization cards, etc.',
      title: 'Card-Space',
      tech: [
        'Flutter',
        'Dart',
        'Android Studio',
        'Android Studio',
        'Android Studio',
        'Android Studio',
        'Android Studio',
        'Android Studio',
        'Android Studio'
      ],
    ));
    proj.add(projects(
      tech: ['Flutter'],
      imgsrc:
          'https://raw.githubusercontent.com/Yogeshk4124/Card-Space/main/screenshots/4.png',
      summary:
          'A secured cross-platfom application that allows the user to save their cards like (Bank cards, Personal Identification Cards, etc) in a highly secured format. These card can be viewed by user anytime. The main problem it solves is that the user does not need to carry all the card while he can carry a single mobile phone with our installed.Take control of your cards with this offline card manager (no need to create account or login online).It makes card management smart, simple and secure.',
      title: 'Card-Space',
    ));
    proj.add(projects(
      tech: ['Flutter'],
      imgsrc:
          'https://raw.githubusercontent.com/Yogeshk4124/Card-Space/main/screenshots/CardSpaceLogo.png',
      summary:
          'A secured cross-platfom application that allows the user to save their cards like (Bank cards, Personal Identification Cards, etc) in a highly secured format. These card can be viewed by user anytime. The main problem it solves is that the user does not need to carry all the card while he can carry a single mobile phone with our installed.Take control of your cards with this offline card manager (no need to create account or login online).It makes card management smart, simple and secure.',
      title: 'Card-Space',
    ));
    proj.add(projects(
      tech: ['Flutter'],
      imgsrc:
          'https://raw.githubusercontent.com/Yogeshk4124/Card-Space/main/screenshots/CardSpaceLogo.png',
      summary:
          'A secured cross-platfom application that allows the user to save their cards like (Bank cards, Personal Identification Cards, etc) in a highly secured format. These card can be viewed by user anytime. The main problem it solves is that the user does not need to carry all the card while he can carry a single mobile phone with our installed.Take control of your cards with this offline card manager (no need to create account or login online).It makes card management smart, simple and secure.',
      title: 'Card-Space',
    ));
    return proj;
  }

  static AnimatedList buildHtml() {
    Html html = new Html();
    return AnimatedList(
      initialItemCount: html.title.length + 1,
      itemBuilder: (context, i, anim) {
        if (i == 0)
          return Card(
            // color: Colors.accents.elementAt(Random().nextInt(16)),
            color: myColor[colorgenerator()],
            child: Text(
              'HTML',
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          );
        return Card(
          color: Color(0xff505050),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  child: Text(
                    html.title[i - 1],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  child: Text(
                    html.subheading[i - 1],
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade400),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  // margin: EdgeInsets.all(2),
                  child: Text(
                    html.body[i - 1],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    html.buttonText[i - 1],
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static AnimatedList buildCpp() {
    Cpp cpp = new Cpp();
    return AnimatedList(
      initialItemCount: cpp.title.length + 1,
      itemBuilder: (context, i, anim) {
        if (i > cpp.title.length) return Container();
        if (i == 0)
          return Card(
            color: myColor[colorgenerator()],
            child: Text(
              'C++',
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          );
        return Card(
          color: Color(0xff505050),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cpp.title[i - 1],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  cpp.subheading[i - 1],
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    cpp.body[i - 1],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    cpp.buttonText[i - 1],
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static AnimatedList buildJavaScript() {
    JavaScript javaScript = new JavaScript();
    return AnimatedList(
      initialItemCount: javaScript.title.length,
      itemBuilder: (context, i, anim) {
        if (i == 0)
          return Card(
            color: myColor[colorgenerator()],
            child: Text(
              'JavaScript',
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          );
        return Card(
          color: Color(0xff505050),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  javaScript.title[i - 1],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  javaScript.subheading[i - 1],
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    javaScript.body[i - 1],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    javaScript.buttonText[i - 1],
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static AnimatedList buildCSS() {
    Css css = new Css();
    return AnimatedList(
      initialItemCount: css.title.length + 1,
      itemBuilder: (context, i, anim) {
        if (i == 0)
          return Card(
            color: myColor[colorgenerator()],
            child: Text(
              'CSS',
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          );
        return Card(
          color: Color(0xff505050),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  css.title[i - 1],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  css.subheading[i - 1],
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    css.body[i - 1],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    css.buttonText[i - 1],
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static AnimatedList buildPython() {
    Python python = new Python();
    return AnimatedList(
      initialItemCount: python.title.length + 1,
      itemBuilder: (context, i, anim) {
        if (i > python.title.length) return Container();
        if (i == 0)
          return Card(
            // color: Colors.accents.elementAt(Random().nextInt(16)),
            color: myColor[colorgenerator()],
            child: Text(
              'Python',
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          );
        else
          return Card(
            color: Color(0xff505050),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                    child: Text(
                      python.title[i - 1],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                    child: Text(
                      python.subheading[i - 1],
                      style:
                          TextStyle(fontSize: 12, color: Colors.grey.shade400),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                    // margin: EdgeInsets.all(2),
                    child: Text(
                      python.body[i - 1],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Text(
                      python.buttonText[i - 1],
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          );
      },
    );
  }

  static ListView buildFlutter() {
    Flutter flutter = new Flutter();

    return ListView.builder(
      itemCount: flutter.title.length + 1,
      // initialItemCount: flutter.title.length,
      itemBuilder: (context, i) {
        if (i == 0)
          return Card(
            color: myColor[colorgenerator()],
            child: Text(
              'Flutter',
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          );
        return Card(
          color: Color(0xff505050),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  flutter.title[i - 1],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  flutter.subheading[i - 1],
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    flutter.body[i - 1],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    flutter.buttonText[i - 1],
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static ListView buildAndroid() {
    Android android = new Android();

    return ListView.builder(
      itemCount: android.title.length + 1,
      itemBuilder: (context, i) {
        if (i == 0)
          return Card(
            color: myColor[colorgenerator()],
            child: Text(
              'Android',
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          );
        return Card(
          color: Color(0xff505050),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  android.title[i - 1],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  android.subheading[i - 1],
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    android.body[i - 1],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    android.buttonText[i - 1],
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static Widget ListbuildHandler(String skill) {
    switch (skill) {
      case 'HTML':
        return buildHtml();
      case 'C++':
        return buildCpp();
      case 'JavaScript':
        return buildJavaScript();
      case 'CSS':
        return buildCSS();
      case 'Python':
        return buildPython();
      case 'Flutter':
        return buildFlutter();
      case 'Android':
        return buildAndroid();
      default:
        return Container();
    }
  }
}

class Html {
  List<String> title = [
    'HTML, CSS and JavaScript for Web Developer',
    'Programmer Clock',
  ];
  List<String> subheading = [
    'By Coursera',
    'Project',
  ];
  List<String> body = [
    'Offered by Johns Hopkins University. A introductory course for web development.',
    'Programmer Clock is a clock with weather forecast.',
  ];
  List<String> buttonText = [
    'View Certificate',
    'View Website',
  ];
}

class Cpp {
  List<String> title = [
    'Algorithmic Toolbox',
  ];
  List<String> subheading = [
    'By Coursera',
  ];
  List<String> body = [
    'The course covers basic algorithmic techniques and ideas for computational problems arising frequently in practical applications: sorting and searching, divide and conquer, greedy algorithms, dynamic programming.',
  ];
  List<String> buttonText = [
    'View Certificate',
  ];
}

class JavaScript {
  List<String> title = [
    'HTML, CSS and JavaScript for Web Developer',
    'Programmer Clock',
  ];
  List<String> subheading = [
    'By Coursera',
    'Project',
  ];
  List<String> body = [
    'Offered by Johns Hopkins University. A introductory course for web development.',
    'Programmer Clock is a clock with weather forecast.',
  ];
  List<String> buttonText = [
    'View Certificate',
    'View Website',
  ];
}

class Python {
  List<String> title = [
    'The Joy of Computing using Python',
  ];
  List<String> subheading = [
    'By NPTEL',
  ];
  List<String> body = [
    'Offered by IIT Ropar. A introductory course for learning python.',
  ];
  List<String> buttonText = [
    'View Certificate',
  ];
}

class Flutter {
  List<String> title = [
    'Gmail Clone',
    'Card Space',
    'Sync Player',
    'Calorie Meter',
    'Weather App'
  ];
  List<String> subheading = [
    'Fun Project',
    'Project',
    'Project',
    'Learning Project',
    'Learning Project'
  ];
  List<String> body = [
    'Gmail App UI Clone in Flutter.',
    'A simple app for managing our day-to-day life cards like bank cards, business cards, organization cards, etc.',
    'Sync Player is an app that syncs any video or music with other members in a room.',
    'Calorie Meter is an android app that helps the user to measure their daily BMI(Body Mass Index) and BMR (Basal Metabolic Rate) and let them achieve their goal.',
    'A simple weather app.',
  ];
  List<String> buttonText = [
    'View More',
    'View More',
    'View More',
    'View More',
    'View More',
  ];
}

class Css {
  List<String> title = [
    'HTML, CSS and JavaScript for Web Developer',
    'Programmer Clock',
  ];
  List<String> subheading = [
    'By Coursera',
    'Project',
  ];
  List<String> body = [
    'Offered by Johns Hopkins University. A introductory course for web development.',
    'Programmer Clock is a clock with weather forecast.',
  ];
  List<String> buttonText = [
    'View Certificate',
    'View Website',
  ];
}

class Android {
  List<String> title = ['ChatterBox Translator'];
  List<String> subheading = ['Project'];
  List<String> body = [
    'Chatter Box is an android app that is capable of Voice, Text, Image Text Translation, and end-to-end chat translation.',
  ];
  List<String> buttonText = [
    'View More',
  ];
}
