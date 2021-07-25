import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfoliom/NavBar.dart';

class Projects extends StatefulWidget {
  // const Projects({Key key}) : super(key: key);

  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            NavBar(),
          ],
        ),
      ),
    );
  }
}
