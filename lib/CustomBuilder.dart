import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfoliom/project.dart';

class CustomBuilder {
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
    return AnimatedList(
      initialItemCount: 4,
      itemBuilder: (context, i, anim) {
        if (i == 0)
          return Text(
            'HTML',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          );
        return Card(
          color: Color(0xff505050),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  'Algorithmic Toolbox',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'By Coursera',
                  style: TextStyle(color: Colors.white),
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
                    'View Certificate',
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
}

class html {
  List<String> title = ['html', 'html', 'html', 'html', 'html'];
  List<String> subheading = ['html', 'html', 'html', 'html', 'html'];
}

class cpp {
  List<String> title = ['html', 'html', 'html', 'html', 'html'];
  List<String> subheading = ['html', 'html', 'html', 'html', 'html'];
}

class javaScript {
  List<String> title = ['html', 'html', 'html', 'html', 'html'];
  List<String> subheading = ['html', 'html', 'html', 'html', 'html'];
}

class python {
  List<String> title = ['html', 'html', 'html', 'html', 'html'];
  List<String> subheading = ['html', 'html', 'html', 'html', 'html'];
}

class flutter {
  List<String> title = ['html', 'html', 'html', 'html', 'html'];
  List<String> subheading = ['html', 'html', 'html', 'html', 'html'];
}

class css {
  List<String> title = ['html', 'html', 'html', 'html', 'html'];
  List<String> subheading = ['html', 'html', 'html', 'html', 'html'];
}

class java {
  List<String> title = ['html', 'html', 'html', 'html', 'html'];
  List<String> subheading = ['html', 'html', 'html', 'html', 'html'];
}
