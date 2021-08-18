import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:portfolio/Pages/CustomWebView.dart';
import 'package:portfolio/Pages/Skills.dart';
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
  Color shadow = Colors.white;
  Color bg = black;
  // var fileDownloaderProvider;
  @override
  Widget build(BuildContext context) {
    // fileDownloaderProvider =
    //     Provider.of<FileDownloaderProvider>(context, listen: false);
    return Container(
      // padding: EdgeInsets.only(top: 30),
      child: InkWell(
        onTap: () async {
          print('enter');
          if (widget.type == 1 && kIsWeb) {
            print('p check');
            js.context.callMethod('open', [widget.pageRoute]);
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) => CustomWebView(link: widget.pageRoute)));
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
              bg = shadow;
              shadow = black;
            } else {
              shadow = Colors.white;
              bg = black;
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
            // boxShadow: [
            //   BoxShadow(
            //     color: shadow,
            //     offset: const Offset(
            //       5.0,
            //       4.0,
            //     ),
            //     spreadRadius: 2.0,
            //   ), //BoxShadow
            //   BoxShadow(
            //     color: shadow,
            //     offset: const Offset(0.0, 0.0),
            //     spreadRadius: 0.0,
            //   ), //BoxShadow
            // ],
          ),
          child: Text(
            widget.text,
            style: TextStyle(color: bg, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
