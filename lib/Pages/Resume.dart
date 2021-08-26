import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Components/NavBar.dart';
import 'package:portfolio/Utility/Constants.dart';

class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: SafeArea(
        child: Container(
          margin: (MediaQuery.of(context).size.width > 700)
              ? EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 10)
              : EdgeInsets.zero,
          child: Column(
            children: [
              NavBar(page: 3),
              Container(
                color: kCardBackground,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text('Hello'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
