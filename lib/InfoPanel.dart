import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Pages/Skills.dart';

class InfoPanel extends StatefulWidget {
  InfoPanel({Key? key}) : super(key: key);
  @override
  InfoPanelState createState() => InfoPanelState();
}

class InfoPanelState extends State<InfoPanel> {
  int opt = -1;
  List<String> institute = [];
  List<String> duration = [];
  @override
  void initState() {
    // opt = optionKey.currentState!.option;
    print(opt);
  }

  changeOption(int x) {
    setState(() {
      opt = x;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (opt == 1)
      return Container(
        height: 360,
        width: MediaQuery.of(context).size.width < 860
            ? double.maxFinite
            : MediaQuery.of(context).size.width - 482,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Education',
                style: GoogleFonts.bungee(fontSize: 30, color: Colors.white),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                  enableInfiniteScroll: false,
                  disableCenter: true,
                  pageSnapping: true,
                  height: 200.0,
                  initialPage: 1,
                  viewportFraction:
                      MediaQuery.of(context).size.width < 750 ? 0.45 : 0.35,
                  // viewportFraction: 0.4,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal),
              items: [
                1,
                2,
                3,
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Card(
                      color: black,
                      shadowColor: Colors.white,
                      elevation: 5,
                      borderOnForeground: true,
                      margin: EdgeInsets.all(10),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Intermediate (CBSE)',
                                style: GoogleFonts.titilliumWeb(
                                    fontSize: 14, color: Colors.white),
                              ),
                              Text(
                                'Army Public School,\nYol Cantt',
                                style: GoogleFonts.titilliumWeb(
                                    fontSize: 24,
                                    color: Colors.white,
                                    height: 1),
                              ),
                              Text(
                                '2017-2018',
                                style: GoogleFonts.titilliumWeb(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      );
    else if (opt == 2)
      return Container(
        height: 360,
        width: MediaQuery.of(context).size.width < 860
            ? double.maxFinite
            : MediaQuery.of(context).size.width - 482,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Experience',
                style: GoogleFonts.bungee(fontSize: 30, color: Colors.white),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                  enableInfiniteScroll: false,
                  disableCenter: true,
                  pageSnapping: true,
                  height: 200.0,
                  initialPage: 1,
                  viewportFraction:
                      MediaQuery.of(context).size.width < 750 ? 0.45 : 0.35,
                  // viewportFraction: 0.4,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal),
              items: [
                1,
                2,
                3,
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Card(
                      color: black,
                      shadowColor: Colors.white,
                      elevation: 5,
                      borderOnForeground: true,
                      margin: EdgeInsets.all(10),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Intermediate (CBSE)',
                                style: GoogleFonts.titilliumWeb(
                                    fontSize: 14, color: Colors.white),
                              ),
                              Text(
                                'Army Public School,\nYol Cantt',
                                style: GoogleFonts.titilliumWeb(
                                    fontSize: 24,
                                    color: Colors.white,
                                    height: 1),
                              ),
                              Text(
                                '2017-2018',
                                style: GoogleFonts.titilliumWeb(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      );
    else
      return Container(
        height: 360,
        width: MediaQuery.of(context).size.width < 860
            ? double.maxFinite
            : MediaQuery.of(context).size.width - 482,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
        ),
        child: Image.asset(
          'flutter.jpg',
          fit: BoxFit.fitWidth,
        ),
      );
  }
}
