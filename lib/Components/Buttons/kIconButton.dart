// ignore: must_be_immutable
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yogeshk4124.github.io/Pages/CustomWebView.dart';
import 'package:yogeshk4124.github.io/Utility/Colors.dart';
import 'package:universal_html/js.dart' as js;

class kIconButton extends StatefulWidget {
  final String link;
  IconData icon;
  kIconButton({Key? key, required this.link, required this.icon})
      : super(key: key);

  @override
  _kIconButtonState createState() => _kIconButtonState();
}

class _kIconButtonState extends State<kIconButton> {
  Color kColor = kDarkWhite;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (kIsWeb) {
          js.context.callMethod('open', [widget.link]);
        } else {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CustomWebView(link: widget.link)));
        }
      },
      onHover: (c) {
        setState(() {
          if (c)
            kColor = kDeepBlue;
          else
            kColor = kDarkWhite;
        });
      },
      child: Container(
        width: 35,
        alignment: Alignment.center,
        child: FaIcon(
          widget.icon,
          color: kColor,
          size: 25,
        ),
      ),
    );
  }
}
