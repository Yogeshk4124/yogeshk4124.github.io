import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Components/Buttons/kIconButton.dart';
import 'package:portfolio/Pages/CustomWebView.dart';
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
          // kIconButton(
          //     icon: FontAwesomeIcons.instagram,
          //     link: 'https://in.linkedin.com/in/yogeshk4124'),
          kIconButton(
              icon: FontAwesomeIcons.linkedin,
              link: 'https://in.linkedin.com/in/yogeshk4124'),
          kIconButton(
              icon: FontAwesomeIcons.envelope,
              link: 'mailto:yogeshk4124@gmail.com'),
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
