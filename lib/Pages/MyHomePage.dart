import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Components/Buttons/CustomButton.dart';
import 'package:portfolio/Components/Footer.dart';
import 'package:portfolio/Components/InfoSection/InfoPanel.dart';
import 'package:portfolio/Components/InfoSection/InfoTabItem.dart';
import 'package:portfolio/Models/project.dart';
import 'package:portfolio/Utility/Utility.dart';

import './SkillsPage.dart';
import '../Components/NavBar.dart';
import '../Utility/Constants.dart';
import '../Utility/keys.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  late List<Widget> aim;
  List<String> subtitle = [
    'I am Popeye not with spinach but with Computer.',
    'I can code and build stuff for you.',
    'I can tolerate everything except A bug.',
    'I only visit one hub that is Github.',
    'My favourite character is BugsLightYear.',
    "I won't let the server crash until it is running on my pc.",
    "I can fix your bug and hack your friend's Instagram but can't fix your coffee machine.",
  ];
  int option = 1;
  @override
  void initState() {
    super.initState();
    eventHub.on('reset', (idx) {
      setState(() {
        option = idx;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    bool LessWidthMQ(double x) {
      return MediaQuery.of(context).size.width < x;
    }

    aim = [
      Column(
        children: [
          // Container(
          //   height: 30,
          //   width: LessWidthMQ(860) ? double.maxFinite : 400,
          //   alignment: Alignment.center,
          //   child: Text(
          //     'Click any tab to show details.',
          //     style: GoogleFonts.titilliumWeb(color: Colors.white),
          //   ),
          // ),
          InfoTabItem(
            text: 'Education',
            idx: 1,
            selected: option == 1,
            key: k1,
          ),
          InfoTabItem(
            text: 'Work Experience',
            idx: 2,
            selected: option == 2,
            key: k2,
          ),
          InfoTabItem(
            text: 'Fun Fact',
            idx: 3,
            selected: option == 3,
            key: k3,
          ),
        ],
      ),
      InfoPanel(key: infoPanelKey, opt: option),
    ];
    List<Widget> icons = [
      Icon(
        Icons.android,
        color: Colors.white,
        size: 50,
      ),
      Icon(
        Icons.language,
        color: Colors.white,
        size: 50,
      ),
      Icon(
        Icons.phone_iphone,
        color: Colors.white,
        size: 50,
      ),
      Icon(
        Icons.filter_b_and_w,
        color: Colors.white,
        size: 50,
      ),
    ];
    List<String> title = ['Android', 'Web', 'IOS', 'UI/UX'];

    return Scaffold(
      backgroundColor: kBackground,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              NavBar(page: 0),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: ClampingScrollPhysics(),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: double.maxFinite,
                        // height: LessWidthMQ(500) ? 600 : 350,
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 50),
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "I'M Yogesh Kumar",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.bungee(
                                  //fruktur,monoton,cutivemono
                                  height: 1,
                                  color: Colors.white,
                                  wordSpacing: 10,
                                  fontSize: 40,
                                ),
                              ),
                              Container(
                                height: 100,
                                alignment: Alignment.center,
                                child: DefaultTextStyle(
                                  style: GoogleFonts.bungee(
                                    //fruktur,monoton,cutivemono
                                    color: kDeepBlue,
                                    fontSize: 30,
                                  ),
                                  child: AnimatedTextKit(
                                    animatedTexts: [
                                      RotateAnimatedText(
                                        stringMod('Flutter Developer', 4),
                                        textAlign: TextAlign.center,
                                      ),
                                      RotateAnimatedText(
                                        stringMod('Android Developer', 4),
                                        textAlign: TextAlign.center,
                                      ),
                                      RotateAnimatedText(
                                        stringMod('Techie', 4),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                    repeatForever: true,
                                  ),
                                ),
                              ),
                              Text(
                                stringMod(
                                    subtitle[Random().nextInt(subtitle.length)],
                                    4), // subtitle[5],
                                style: GoogleFonts.titilliumWeb(
                                  //fruktur,monoton,cutivemono
                                  color: kDarkWhite,
                                  fontWeight: FontWeight.bold,
                                  // wordSpacing: 90,
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.78,
                          child: Text(
                            stringMod(
                                'I am an aspiring Android Developer and a Competitive Programming Enthusiast, still a learner with the idea of implementing my work and growing into an open source contributor and a developer.',
                                1),
                            style: GoogleFonts.titilliumWeb(
                                //amaticaSc
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w300),
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
                              crossAxisCount:
                                  (MediaQuery.of(context).size.width > 560)
                                      ? 4
                                      : 2,
                              // childAspectRatio: 4,
                              mainAxisExtent:
                                  200, // <== change the height to fit your needs
                            ),
                            itemCount: 4,
                            itemBuilder: (context, i) {
                              return Container(
                                width: 100,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 40,
                                      backgroundColor: kPink,
                                      child: icons[i],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      title[i],
                                      style: GoogleFonts.titilliumWeb(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width > 700
                                ? 40
                                : 15),
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
                                : (MediaQuery.of(context).size.width > 700)
                                    ? 4
                                    : 3,
                            itemBuilder: (context, i) {
                              return buildProjectCard(i, '/Project');
                            }),
                      ),
                      Card(
                        margin: EdgeInsets.only(
                            top: 20,
                            left: MediaQuery.of(context).size.width < 700
                                ? 15
                                : 0,
                            right: MediaQuery.of(context).size.width < 700
                                ? 15
                                : 0),
                        color: kCardBackground,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              topLeft: MediaQuery.of(context).size.width < 960
                                  ? Radius.circular(20)
                                  : Radius.circular(50),
                              topRight: Radius.circular(20),
                              bottomRight:
                                  MediaQuery.of(context).size.width < 960
                                      ? Radius.circular(50)
                                      : Radius.circular(20)),
                        ),
                        // height: 450,
                        child: Wrap(
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.end,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: MediaQuery.of(context).size.width < 960
                                ? aim.reversed.toList()
                                : aim),
                      ),
                      Footer(),
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

  Card buildProjectCard(int i, String pageRoute) {
    Card c = Card(
      color: kCardBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(),
          Text(
            projectsList[i].title.toString(),
            style: GoogleFonts.bungee(
              color: kPink,
              fontSize: 26,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            projectsList[i].subtitle.toString(),
            style: GoogleFonts.titilliumWeb(
              color: kWhite,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          ImageSlideshow(
            width: 200,
            height: 400,
            initialPage: 0,
            indicatorColor: Colors.blue,
            indicatorBackgroundColor: Colors.grey,
            isLoop: true,
            children: [
              for (int j = 0; j < projectsList[i].imgsrc!.length.toInt(); j++)
                Image.network(
                  projectsList[i].imgsrc![j],
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
          CustomButton(
            type: 1,
            pageRoute: projectsList[i].viewMore.toString(),
            text: 'View More',
          ),
          Container(),
        ],
      ),
    );
    return c;
  }
}
