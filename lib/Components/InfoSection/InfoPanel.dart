import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Models/InfoPanelModels.dart';
import 'package:portfolio/Pages/SkillsPage.dart';
import 'package:portfolio/Utility/Constants.dart';

class InfoPanel extends StatelessWidget {
  int opt = -1;
  InfoPanel({required this.opt});
  @override
  Widget build(BuildContext context) {
    if (opt == 1)
      return Container(
        height: 360,
        width: MediaQuery.of(context).size.width < 860
            ? double.maxFinite
            : MediaQuery.of(context).size.width - 482,
        padding: EdgeInsets.only(left: 10, right: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: MediaQuery.of(context).size.width < 960
                ? Radius.circular(20)
                : Radius.zero,
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  // aspectRatio: 2,
                  scrollDirection: Axis.horizontal),
              items: education.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Card(
                      color: kBackgroundAccent,
                      shadowColor: Colors.pink,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      borderOnForeground: true,
                      margin: EdgeInsets.all(10),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 14),
                        child: Container(
                          // height: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisSize: MainAxisSize.min,
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
                                i.institute,
                                style: GoogleFonts.titilliumWeb(
                                    fontSize: 24,
                                    color: kPink,
                                    height: 1,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                i.location,
                                style: GoogleFonts.titilliumWeb(
                                    color: kPink,
                                    height: 1,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                i.duration,
                                style: GoogleFonts.titilliumWeb(
                                  fontSize: 12,
                                  color: kDarkWhite,
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
        padding: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: MediaQuery.of(context).size.width < 960
                ? Radius.circular(20)
                : Radius.zero,
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        height: 360,
        width: MediaQuery.of(context).size.width < 860
            ? double.maxFinite
            : MediaQuery.of(context).size.width - 482,
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  enableInfiniteScroll: false,
                  disableCenter: true,
                  pageSnapping: true,
                  height: 271,
                  initialPage: 1,
                  viewportFraction:
                      MediaQuery.of(context).size.width < 730 ? 0.7 : 0.35,
                  // viewportFraction: 0.4,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal),
              items: experience.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Card(
                      color: kBackgroundAccent,
                      shadowColor: Colors.pink,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      borderOnForeground: true,
                      margin: EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 14),
                        child: Container(
                          // height: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                i.companyName,
                                style: GoogleFonts.titilliumWeb(
                                    fontSize: 24,
                                    color: kPink,
                                    height: 1,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                i.location,
                                style: GoogleFonts.titilliumWeb(
                                    color: kPink,
                                    height: 1,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                i.position,
                                style: GoogleFonts.titilliumWeb(
                                  fontSize: 14,
                                  color: kDarkWhite,
                                ),
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
        padding: EdgeInsets.only(left: 10, right: 10),
        width: MediaQuery.of(context).size.width < 860
            ? double.maxFinite
            : MediaQuery.of(context).size.width - 482,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: MediaQuery.of(context).size.width < 960
                ? Radius.circular(20)
                : Radius.zero,
            topRight: Radius.circular(20),
            bottomRight: MediaQuery.of(context).size.width > 960
                ? Radius.circular(20)
                : Radius.circular(0),
          ),
        ),
        alignment: Alignment.center,
        child: CarouselSlider(
          options: CarouselOptions(
              enableInfiniteScroll: false,
              disableCenter: true,
              pageSnapping: true,
              height: 280,
              initialPage: 1,
              viewportFraction:
                  MediaQuery.of(context).size.width < 750 ? 0.45 : 0.35,
              // viewportFraction: 0.4,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal),
          items: [for (var i in funFactList) getFunFact(i)],
        ),
      );
  }

  Card getFunFact(FunFact f) {
    return Card(
      color: kBackgroundAccent,
      elevation: 5,
      shadowColor: Colors.pink,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              child: Image.asset(
                f.img,
                // height: 165,
                alignment: Alignment.topCenter,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (a, b, c) {
                  return Text(b.toString(),
                      style: GoogleFonts.titilliumWeb(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: kWhite));
                },
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
              alignment: Alignment.center,
              child: Text(
                f.heading,
                textAlign: TextAlign.center,
                style: GoogleFonts.titilliumWeb(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: kPink,
                  height: 1,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(f.description,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.titilliumWeb(
                    fontWeight: FontWeight.bold,
                    color: kWhite,
                    height: 1,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
