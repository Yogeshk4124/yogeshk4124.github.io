import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Components/Footer.dart';
import 'package:portfolio/Utility/Constants.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  late PdfViewerController _pdfViewerController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pdfViewerController = PdfViewerController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackground,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 40,
              alignment: Alignment.center,
              margin: MediaQuery.of(context).size.width < 800
                  ? EdgeInsets.symmetric(horizontal: 10)
                  : EdgeInsets.only(top: 40, right: 40, left: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 80,
                  ),
                  Expanded(
                    child: Text(
                      'Resume',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.titilliumWeb(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: kWhite),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        width: 80,
                        margin: EdgeInsets.only(right: 10, top: 4, bottom: 4),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: kBackground,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          'Download',
                          style: TextStyle(color: kWhite),
                        )),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: kDeepBlue,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                ),
              ),
            ),
            Container(
              height: 800,
              padding: EdgeInsets.all(40),
              margin: MediaQuery.of(context).size.width < 800
                  ? EdgeInsets.symmetric(horizontal: 10)
                  : EdgeInsets.only(right: 40, left: 40),
              decoration: BoxDecoration(
                  color: kCardBackground,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(7),
                    bottomLeft: Radius.circular(7),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "I really wanted to upload my resume but I didn't because of the following reasons.",
                    textAlign: TextAlign.center,
                    style:
                        GoogleFonts.titilliumWeb(fontSize: 40, color: kWhite),
                  ),
                  Text(
                    "1. Resume white background didn't suit the portfolio's background.\n2. The main reason was that I didn't have something extraordinary experience to show except projects😅. Everything is shown in this portfolio.😄",
                    textAlign: TextAlign.center,
                    style:
                        GoogleFonts.titilliumWeb(fontSize: 20, color: kWhite),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "I will be sharing it soon.",
                    textAlign: TextAlign.center,
                    style:
                        GoogleFonts.titilliumWeb(fontSize: 12, color: kWhite),
                  ),
                ],
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
