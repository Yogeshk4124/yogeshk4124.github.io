import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Pages/CustomWebView.dart';
import 'package:portfolio/Pages/SkillsPage.dart';
import 'package:portfolio/Utility/Constants.dart';
import 'package:universal_html/js.dart' as js;

class CustomButton extends StatefulWidget {
  String pageRoute, text;
  int type;
  CustomButton(
      {required this.pageRoute, required this.type, required this.text});
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  Color shadow = kDeepBlue;
  Color bg = kWhite;
  // var fileDownloaderProvider;
  @override
  Widget build(BuildContext context) {
    // fileDownloaderProvider =
    //     Provider.of<FileDownloaderProvider>(context, listen: false);
    return InkWell(
      onTap: () async {
        if (widget.type == 1 && kIsWeb) {
          js.context.callMethod('open', [widget.pageRoute]);
        } else if (widget.type == 1) {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CustomWebView(link: widget.pageRoute)));
        }
        if (widget.type == 2 && kIsWeb) {
          js.context.callMethod('open', [widget.pageRoute]);
        } else if (widget.type == 2) {
          // fileDownloaderProvider
          //     .downloadFile(widget.pageRoute, "apk.apk")
          //     .then((onValue) {});
        }
      },
      onHover: (val) {
        setState(() {
          if (val) {
            shadow = kBackground;
            bg = kDeepBlue;
          } else {
            shadow = kDeepBlue;
            bg = kWhite;
          }
        });
      },
      child: Container(
        width: 150,
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: shadow,
          border: shadow == black
              ? Border.all(color: bg)
              : Border.all(color: shadow),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          widget.text,
          style: GoogleFonts.titilliumWeb(
              fontWeight: FontWeight.bold, color: bg, fontSize: 16),
        ),
      ),
    );
  }
}
