import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Pages/SkillsPage.dart';
import 'package:portfolio/Utility/Constants.dart';

class InfoPanel extends StatefulWidget {
  final opt;
  InfoPanel({required this.opt, Key? key}) : super(key: key);
  @override
  InfoPanelState createState() => InfoPanelState();
}

class InfoPanelState extends State<InfoPanel> {
  int opt = -1;
  List<String> institute = [];
  List<String> duration = [];
  @override
  void initState() {
    setState(() {
      opt = widget.opt;
    });
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
                  initialPage: 0,
                  viewportFraction:
                      MediaQuery.of(context).size.width < 750 ? 0.45 : 0.35,
                  // viewportFraction: 0.4,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal),
              items: education.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Card(
                      color: black,
                      shadowColor: Colors.white,
                      elevation: 5,
                      borderOnForeground: true,
                      margin: EdgeInsets.all(10),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 14),
                        child: Container(
                          // height: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                i.level,
                                style: GoogleFonts.titilliumWeb(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                i.board,
                                style: GoogleFonts.titilliumWeb(
                                    fontSize: 14, color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                i.institute + ',',
                                style: GoogleFonts.titilliumWeb(
                                    fontSize: 24,
                                    color: Colors.white,
                                    height: 1),
                              ),
                              Text(
                                i.location,
                                style: GoogleFonts.titilliumWeb(
                                    fontSize: 24,
                                    color: Colors.white,
                                    height: 1),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                i.duration,
                                style: GoogleFonts.titilliumWeb(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
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
              padding: const EdgeInsets.all(6.0),
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
                  height: 280,
                  initialPage: 0,
                  viewportFraction:
                      MediaQuery.of(context).size.width < 750 ? 0.45 : 0.35,
                  // viewportFraction: 0.4,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal),
              items: experience.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Card(
                      color: black,
                      shadowColor: Colors.white,
                      elevation: 5,
                      borderOnForeground: true,
                      margin: EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 14),
                        child: Container(
                          // height: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                i.companyName + ',',
                                style: GoogleFonts.titilliumWeb(
                                    fontSize: 24,
                                    color: Colors.white,
                                    height: 1),
                              ),
                              Text(
                                i.location,
                                style: GoogleFonts.titilliumWeb(
                                    fontSize: 24,
                                    color: Colors.white,
                                    height: 1),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                i.position,
                                style: GoogleFonts.titilliumWeb(
                                    fontSize: 14, color: Colors.white),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                i.duration,
                                style: GoogleFonts.titilliumWeb(
                                    fontSize: 12, color: Colors.white),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              for (int j = 0; j < i.content.length; j++)
                                Container(
                                  child: Flexible(
                                    child: Text(
                                      "֍  " + i.content[j],
                                      style: GoogleFonts.titilliumWeb(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  ),
                                )
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
        alignment: Alignment.center,
        child: CarouselSlider(
          options: CarouselOptions(
              enableInfiniteScroll: false,
              disableCenter: true,
              pageSnapping: true,
              height: 280,
              initialPage: 0,
              viewportFraction:
                  MediaQuery.of(context).size.width < 750 ? 0.45 : 0.35,
              // viewportFraction: 0.4,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal),
          items: [
            Card(
              color: black,
              elevation: 5,
              shadowColor: Colors.white,
            ),
            Card(
              color: black,
              elevation: 5,
              shadowColor: Colors.white,
            ),
            Card(
              color: black,
              elevation: 5,
              shadowColor: Colors.white,
            ),
            Card(
              color: black,
              elevation: 5,
              shadowColor: Colors.white,
            ),
          ],
        ),
      );
    // return Container(
    //   height: 360,
    //   width: MediaQuery.of(context).size.width < 860
    //       ? double.maxFinite
    //       : MediaQuery.of(context).size.width - 482,
    //   decoration: BoxDecoration(
    //     border: Border.all(color: Colors.white, width: 1),
    //   ),
    //   child: Image.asset(
    //     'flutter.jpg',
    //     fit: BoxFit.fitWidth,
    //   ),
    // );
  }
}
