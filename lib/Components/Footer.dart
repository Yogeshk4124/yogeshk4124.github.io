import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogeshk4124.github.io/Components/Buttons/kIconButton.dart';
import 'package:yogeshk4124.github.io/Utility/Colors.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   border: Border.all(color: Colors.white, width: 1),
      // ),
      padding: EdgeInsets.symmetric(
        horizontal: 35,
      ),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          kIconButton(
              icon: FontAwesomeIcons.github,
              link: 'https://github.com/Yogeshk4124'),
          Spacer(),
          Text(
            '💻Trying not to hardcode everything.',
            style: GoogleFonts.titilliumWeb(
              color: kDarkWhite,
              fontWeight: FontWeight.bold,
            ).copyWith(fontFamily: 'EmojiOne'),
          ),
          Container(
            width: 20,
          ),
        ],
      ),
    );
  }
}
