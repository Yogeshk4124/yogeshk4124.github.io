import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Components/Footer.dart';
import 'package:portfolio/Components/NavBar.dart';
import 'package:portfolio/Utility/Constants.dart';
import 'package:portfolio/Utility/keys.dart';
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
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 112),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 40,
                alignment: Alignment.center,
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
                      onTap: () {
                        print('Download');
                      },
                      child: Container(
                          width: 80,
                          margin: EdgeInsets.only(right: 10, top: 4, bottom: 4),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: kBackground,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
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
                margin: EdgeInsets.only(top: 40, right: 40, left: 40),
              ),
              Container(
                height: 1240,
                padding: EdgeInsets.all(30),
                color: kCardBackground,
                margin: EdgeInsets.only(bottom: 40, right: 40, left: 40),
                child: SfPdfViewer.asset(
                  'something.pdf',
                  key: pdfViewerKey,
                  initialZoomLevel: 1.5,
                  enableDoubleTapZooming: true,
                  canShowPaginationDialog: true,
                  canShowScrollStatus: true,
                  canShowScrollHead: true,
                  controller: _pdfViewerController,
                ),
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
