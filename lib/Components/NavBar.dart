import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Components/Buttons/CustomNavButtons.dart';
import 'package:portfolio/Pages/SkillsPage.dart';
import 'package:portfolio/Utility/keys.dart';

class NavBar extends StatefulWidget {
  // BuildContext pageContext;
  // NavBar({required this.pageContext});
  final int page;
  NavBar({required this.page});
  @override
  NavBarState createState() => NavBarState();
}

class NavBarState extends State<NavBar> with SingleTickerProviderStateMixin {
  List<Color> navItemBgColor = [black, black, black],
      navItemTextColor = [Colors.white, Colors.white, Colors.white];
  List navLinks = ['/Skills', '/Projects', '/Projects'];
  late bool isVisible;
  double height = 0;
  bool isPlaying = false;
  late final AnimationController _controller;
  late int cur;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    isVisible = false;
    height = 0;
    cur = widget.page;
    for (int i = 0; i < SharedAxisTransitionType.values.length; i++)
      print(i.toString() +
          " " +
          SharedAxisTransitionType.values.elementAt(i).toString());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleOnPressed() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying ? _controller.forward() : _controller.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          padding: MediaQuery.of(context).size.width < 800
              ? EdgeInsets.symmetric(horizontal: 10)
              : null,
          margin: (MediaQuery.of(context).size.width > 700)
              ? EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 10)
              : EdgeInsets.zero,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InkWell(
                onTap: () {
                  if (POKey.currentState!.pageNumber != 0) {
                    POKey.currentState!.setState(() {
                      POKey.currentState!.pageNumber = 0;
                    });
                  }
                },
                onHover: (val) {},
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Yogesh',
                    style: GoogleFonts.bungeeInline(
                      color: Colors.pink,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Spacer(),
              Visibility(
                visible: MediaQuery.of(context).size.width >= 800,
                child: CustomNavButtons(),
              ),
              Visibility(
                visible: updateNav(),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isVisible = !isVisible;
                      if (isVisible) {
                        height = 30;
                      } else {
                        height = 0;
                      }
                    });
                    _handleOnPressed();
                  },
                  child: Container(
                    width: 40,
                    alignment: Alignment.center,
                    child: AnimatedIcon(
                      icon: AnimatedIcons.menu_close,
                      color: Colors.white,
                      progress: _controller,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                height = 0;
                isVisible = false;
                POKey.currentState!.setState(() {
                  POKey.currentState!.pageNumber = 1;
                  _controller.reverse();
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: height,
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  'Skills',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                height = 0;
                isVisible = false;
                POKey.currentState!.setState(() {
                  POKey.currentState!.pageNumber = 2;
                  _controller.reverse();
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: height,
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  'Project',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                height = 0;
                isVisible = false;
                POKey.currentState!.setState(() {
                  POKey.currentState!.pageNumber = 3;
                  _controller.reverse();
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: height,
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  'Resume',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  updateNav() {
    if (!(MediaQuery.of(context).size.width >= 800))
      return true;
    else {
      setState(() {
        height = 0;
      });
      return false;
    }
  }
}
