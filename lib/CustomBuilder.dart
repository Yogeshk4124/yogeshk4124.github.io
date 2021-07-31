import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfoliom/project.dart';

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
    ));
    proj.add(projects(
      imgsrc:
          'https://raw.githubusercontent.com/Yogeshk4124/Card-Space/main/screenshots/4.png',
      summary:
          'A secured cross-platfom application that allows the user to save their cards like (Bank cards, Personal Identification Cards, etc) in a highly secured format. These card can be viewed by user anytime. The main problem it solves is that the user does not need to carry all the card while he can carry a single mobile phone with our installed.Take control of your cards with this offline card manager (no need to create account or login online).It makes card management smart, simple and secure.',
      title: 'Card-Space',
    ));
    proj.add(projects(
      imgsrc:
          'https://raw.githubusercontent.com/Yogeshk4124/Card-Space/main/screenshots/CardSpaceLogo.png',
      summary:
          'A secured cross-platfom application that allows the user to save their cards like (Bank cards, Personal Identification Cards, etc) in a highly secured format. These card can be viewed by user anytime. The main problem it solves is that the user does not need to carry all the card while he can carry a single mobile phone with our installed.Take control of your cards with this offline card manager (no need to create account or login online).It makes card management smart, simple and secure.',
      title: 'Card-Space',
    ));
    proj.add(projects(
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
              style: TextStyle(fontSize: 26, color: Colors.white),
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
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
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
              style: TextStyle(fontSize: 26, color: Colors.white),
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
                    fontSize: 26,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  cpp.subheading[i - 1],
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
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
      initialItemCount: javaScript.title.length + 1,
      itemBuilder: (context, i, anim) {
        if (i == 0)
          return Card(
            color: myColor[colorgenerator()],
            child: Text(
              'JavaScript',
              style: TextStyle(fontSize: 26, color: Colors.white),
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
                    fontSize: 26,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  javaScript.subheading[i - 1],
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
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
              style: TextStyle(fontSize: 26, color: Colors.white),
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
                    fontSize: 26,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  css.subheading[i - 1],
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
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

  static AnimatedList ListbuildHandler(String skill) {
    switch (skill) {
      case 'HTML':
        return buildHtml();
      case 'C++':
        return buildCpp();
      case 'JavaScript':
        return buildJavaScript();
      case 'CSS':
        return buildCSS();
      case 'HTML':
        return buildHtml();
      case 'HTML':
        return buildHtml();
      case 'HTML':
        return buildHtml();
      default:
        return buildHtml();
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
  List<String> title = ['html', 'html', 'html', 'html', 'html'];
  List<String> subheading = ['html', 'html', 'html', 'html', 'html'];
}

class Flutter {
  List<String> title = ['html', 'html', 'html', 'html', 'html'];
  List<String> subheading = ['html', 'html', 'html', 'html', 'html'];
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

class Java {
  List<String> title = ['html'];
  List<String> subheading = ['html'];
}
