import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Custom/CustomButton.dart';
import 'package:portfolio/InfoPanel.dart';

import './Skills.dart';
import '../CustomBuilder.dart';
import '../NavBar.dart';
import '../keys.dart';
import '../project.dart';
import '../utility.dart';

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
  late List<projects> proj;
  int option = -1;
  @override
  void initState() {
    super.initState();
    proj = CustomBuilder.getProjectList();
    eventHub.on('reset', (idx) {
      setState(() {
        option = idx;
      });
    });
  }

  // int opt = 1;
  // changeOption(int x) {
  //   setState(() {
  //     opt = x;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    bool LessWidthMQ(double x) {
      return MediaQuery.of(context).size.width < x;
    }

    aim = [
      Column(
        children: [
          Container(
            height: 30,
            width: LessWidthMQ(860) ? double.maxFinite : 400,
            alignment: Alignment.center,
            child: Text(
              'Click any tab to show details.',
              style: GoogleFonts.titilliumWeb(color: Colors.white),
            ),
          ),
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
      backgroundColor: black,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            border: (MediaQuery.of(context).size.width < 700)
                ? Border(
                    left: BorderSide(color: Colors.white, width: 1),
                    right: BorderSide(color: Colors.white, width: 1),
                  )
                : Border.all(width: 0),
          ),
          padding: (MediaQuery.of(context).size.width > 700)
              ? EdgeInsets.only(top: 20, left: 40, bottom: 10, right: 40)
              : EdgeInsets.zero,
          child: Column(
            children: [
              NavBar(page: 0),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.white, width: 1),
                      right: BorderSide(color: Colors.white, width: 1),
                    ),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    physics: ClampingScrollPhysics(),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: double.maxFinite,
                          height: LessWidthMQ(500) ? 600 : 350,
                          alignment: Alignment.center,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "I'M Yogesh Kumar",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.monoton(
                                    //fruktur,monoton,cutivemono
                                    color: Colors.white,
                                    wordSpacing: 10,
                                    fontSize: 40,
                                  ),
                                ),
                                Container(
                                  height: LessWidthMQ(500) ? 150 : 100,
                                  alignment: Alignment.center,
                                  child: DefaultTextStyle(
                                    style: GoogleFonts.monoton(
                                      //fruktur,monoton,cutivemono
                                      color: Colors.white,
                                      fontSize: 30,
                                    ),
                                    child: AnimatedTextKit(
                                      animatedTexts: [
                                        RotateAnimatedText(
                                          CustomBuilder.stringMod(
                                              'Flutter Developer', 4),
                                          textAlign: TextAlign.center,
                                        ),
                                        RotateAnimatedText(
                                          CustomBuilder.stringMod(
                                              'Android Developer', 4),
                                          textAlign: TextAlign.center,
                                        ),
                                        RotateAnimatedText(
                                          CustomBuilder.stringMod('Techie', 4),
                                          textAlign: TextAlign.center,
                                        ),
                                        RotateAnimatedText(
                                          CustomBuilder.stringMod(
                                              'Game Lover', 4),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                      repeatForever: true,
                                    ),
                                  ),
                                ),
                                Text(
                                  CustomBuilder.stringMod(
                                      subtitle[
                                          Random().nextInt(subtitle.length)],
                                      4), // subtitle[5],
                                  style: GoogleFonts.monoton(
                                    //fruktur,monoton,cutivemono
                                    color: Colors.white,
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
                          decoration: BoxDecoration(
                            border: Border.symmetric(
                              horizontal:
                                  BorderSide(color: Colors.white, width: 1),
                              // vertical:
                              //     BorderSide(color: Colors.white, width: 1),
                            ),
                          ),
                          height: 350,
                          alignment: Alignment.center,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.78,
                            child: Text(
                              CustomBuilder.stringMod(
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
                          decoration: BoxDecoration(
                            border: Border.symmetric(
                              horizontal:
                                  BorderSide(color: Colors.white, width: 1),
                              vertical:
                                  BorderSide(color: Colors.white, width: 1),
                            ),
                          ),
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
                                        backgroundColor: Colors.redAccent,
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
                              itemCount: (MediaQuery.of(context).size.width >
                                      960)
                                  ? 3
                                  : (MediaQuery.of(context).size.width > 700)
                                      ? 4
                                      : 3,
                              itemBuilder: (context, i) {
                                return buildProjectCard(proj, i, '/Project');
                              }),
                        ),
                        Container(
                          width: double.maxFinite,
                          // height: 450,
                          child: Wrap(
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.end,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: MediaQuery.of(context).size.width < 960
                                  ? aim.reversed.toList()
                                  : aim),
                        ),
                        CustomBuilder.buildContactFooter(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildProjectCard(List<projects> proj, int i, String pageRoute) {
    Container c = Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1),
      ),
      height: 600,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(),
          Text(
            proj[i].title.toString(),
            style: GoogleFonts.bungee(
              color: Colors.white,
              fontSize: 26,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            proj[i].subtitle.toString(),
            style: GoogleFonts.titilliumWeb(
              color: Colors.white,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          Image.network(
            proj[i].imgsrc.toString(),
            height: 400,
          ),
          CustomButton(
            type: 1,
            pageRoute: '/Projects',
            text: 'View More',
          ),
          Container(),
        ],
      ),
    );
    return c;
  }
}

class InfoTabItem extends StatefulWidget {
  final String text;
  final int idx;
  final bool selected;
  const InfoTabItem({
    Key? key,
    required this.text,
    required this.idx,
    required this.selected,
  }) : super(key: key);

  @override
  InfoTabItemState createState() => InfoTabItemState();
}

class InfoTabItemState extends State<InfoTabItem> {
  Color bg = black, fg = Colors.white;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  setSelected(bool c) {
    setState(() {
      print('for:' + widget.idx.toString() + " i:" + c.toString());
      if (c) {
        bg = Colors.white;
        fg = black;
      } else {
        fg = Colors.white;
        bg = black;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool LessWidthMQ(double x) {
      return MediaQuery.of(context).size.width < x;
    }

    return InkWell(
      onTap: () {
        eventHub.fire('reset', widget.idx);
        infoPanelKey.currentState!.changeOption(widget.idx);
        if (widget.idx == 1)
          k1.currentState!.setSelected(true);
        else
          k1.currentState!.setSelected(false);
        if (widget.idx == 2)
          k2.currentState!.setSelected(true);
        else
          k2.currentState!.setSelected(false);
        if (widget.idx == 3)
          k3.currentState!.setSelected(true);
        else
          k3.currentState!.setSelected(false);
        // homeKey.currentState!.setState(() {
        // homeKey.currentState!.changeOption(widget.idx);
        // });
      },
      onHover: (inside) {
        if (inside && bg == black) {
          setSelected(true);
        } else if (!widget.selected) {
          print('run');
          setSelected(false);
        }
      },
      child: Container(
        width: LessWidthMQ(860) ? double.maxFinite : 400,
        height: 110,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bg,
          border: Border.all(
              color: (widget.selected) ? black : Colors.white, width: 1),
        ),
        child: Text(
          widget.text,
          style: TextStyle(color: fg, fontSize: 30),
        ),
      ),
    );
  }
}
