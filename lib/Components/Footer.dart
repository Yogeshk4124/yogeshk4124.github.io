import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1),
      ),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 35,
            alignment: Alignment.center,
            child: FaIcon(
              FontAwesomeIcons.instagram,
              color: Colors.white,
              size: 25,
            ),
          ),
          Container(
            width: 35,
            alignment: Alignment.center,
            child: FaIcon(
              FontAwesomeIcons.linkedin,
              color: Colors.white,
              size: 25,
            ),
          ),
          Container(
            width: 35,
            alignment: Alignment.center,
            child: FaIcon(
              FontAwesomeIcons.envelope,
              color: Colors.white,
              size: 25,
            ),
          ),
          Spacer(),
          Text(
            'Made with love',
            style: TextStyle(color: Colors.white),
          ),
          Container(
            width: 20,
          )
        ],
      ),
    );
  }
}
