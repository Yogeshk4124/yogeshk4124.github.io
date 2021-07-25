import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './Skills.dart';
import '../CustomBuilder.dart';
import '../NavBar.dart';
import '../project.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<projects> proj = [];
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
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        height: 350,
                        alignment: Alignment.center,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Text(
                            'Bonjour, I am Yogesh.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        height: 350,
                        alignment: Alignment.center,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Text(
                            'Bonjour, I am Yogesh.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        child: GridView.builder(
                            primary: false,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: (MediaQuery.of(context)
                                          .size
                                          .width >
                                      960)
                                  ? 3
                                  : (MediaQuery.of(context).size.width > 700)
                                      ? 2
                                      : 1,
                              // childAspectRatio: 4,
                              mainAxisExtent:
                                  600, // <== change the height to fit your needs
                            ),
                            itemCount: (MediaQuery.of(context).size.width > 960)
                                ? 3
                                : proj.length,
                            itemBuilder: (context, i) {
                              return buildProjectCard(proj, i);
                            }),
                      ),
                      Visibility(
                        visible: (MediaQuery.of(context).size.width > 960),
                        child: Container(
                          height: 650,
                          child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                mainAxisExtent:
                                    650, // <== change the height to fit your needs
                              ),
                              itemCount: proj.length,
                              itemBuilder: (context, i) {
                                return buildProjectCard(proj, i);
                              }),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 400,
                                  height: 150,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                  ),
                                  child: Text(
                                    'Currently Working On',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 36),
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  height: 150,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                  ),
                                  child: Text(
                                    'Learning',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 36),
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  height: 150,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                  ),
                                  child: Text(
                                    'I want to be',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 36),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                height: 450,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 1),
                                ),
                                child: Image.asset('flutter.jpg'),
                              ),
                            ),
                          ],
                        ),
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

  Container buildProjectCard(List<projects> proj, int i) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            proj[i].title.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
            ),
            textAlign: TextAlign.center,
          ),
          Image.network(
            proj[i].imgsrc.toString(),
            height: 200,
            width: 200,
          ),
          Text(
            proj[i].summary.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            width: 200,
            height: 50,
            color: Colors.white,
          ),
          Container(),
        ],
      ),
    );
  }
}
