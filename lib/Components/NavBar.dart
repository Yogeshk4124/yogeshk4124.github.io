import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogeshk4124.github.io/Components/Buttons/CustomNavButtons.dart';
import 'package:yogeshk4124.github.io/Pages/SkillsPage.dart';
import 'package:yogeshk4124.github.io/main.dart';

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

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 600),
      vsync: this,
    );
    isVisible = false;
    height = 0;
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
              GestureDetector(
                onTap: () {
                  if (PoKey.currentState!.pageNumber != 0) {
                    PoKey.currentState!.setState(() {
                      PoKey.currentState!.pageNumber = 0;
                    });
                  }
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
                onDoubleTap: () {},
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Yogesh',
                    style: GoogleFonts.bungeeInline(
                      color: Colors.pink,
                      fontSize: 24,
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
                      size: 24,
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
                PoKey.currentState!.setState(() {
                  if (PoKey.currentState!.pageNumber != 0) {
                    PoKey.currentState!.pageNumber = 0;
                  }
                  _handleOnPressed();
                });
              },
              onDoubleTap: () {},
              child: AnimatedContainer(
                duration: Duration(milliseconds: 600),
                height: height,
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  'Home',
                  style: GoogleFonts.titilliumWeb(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                height = 0;
                isVisible = false;
                PoKey.currentState!.setState(() {
                  if (PoKey.currentState!.pageNumber != 1) {
                    PoKey.currentState!.pageNumber = 1;
                  }
                  _handleOnPressed();
                });
              },
              onDoubleTap: () {},
              child: AnimatedContainer(
                duration: Duration(milliseconds: 600),
                height: height,
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  'Skills',
                  style: GoogleFonts.titilliumWeb(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                height = 0;
                isVisible = false;
                PoKey.currentState!.setState(() {
                  if (PoKey.currentState!.pageNumber != 2) {
                    PoKey.currentState!.pageNumber = 2;
                  }
                  _handleOnPressed();
                });
              },
              onDoubleTap: () {},
              child: AnimatedContainer(
                duration: Duration(milliseconds: 600),
                height: height,
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  'Project',
                  style: GoogleFonts.titilliumWeb(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                height = 0;
                isVisible = false;
                PoKey.currentState!.setState(() {
                  if (PoKey.currentState!.pageNumber != 3) {
                    PoKey.currentState!.pageNumber = 3;
                  }
                  _handleOnPressed();
                });
              },
              onDoubleTap: () {},
              child: AnimatedContainer(
                duration: Duration(milliseconds: 600),
                height: height,
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  'Resume',
                  style: GoogleFonts.titilliumWeb(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
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
