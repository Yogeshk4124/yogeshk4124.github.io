import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Utility/Constants.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   border: Border.all(color: Colors.white, width: 1),
      // ),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 35,
            alignment: Alignment.center,
            child: FaIcon(
              FontAwesomeIcons.instagram,
              color: kDarkWhite,
              size: 25,
            ),
          ),
          Container(
            width: 35,
            alignment: Alignment.center,
            child: FaIcon(
              FontAwesomeIcons.linkedin,
              color: kDarkWhite,
              size: 25,
            ),
          ),
          Container(
            width: 35,
            alignment: Alignment.center,
            child: FaIcon(
              FontAwesomeIcons.envelope,
              color: kDarkWhite,
              size: 25,
            ),
          ),
          Spacer(),
          Text(
            'Made with love',
            style: GoogleFonts.titilliumWeb(
                color: kDarkWhite, fontWeight: FontWeight.bold),
          ),
          Container(
            width: 20,
          )
        ],
      ),
    );
  }
}
