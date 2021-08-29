import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Models/project.dart';
import 'package:portfolio/Pages/ProjectsPage.dart';
import 'package:portfolio/Pages/SkillsPage.dart';
import 'package:portfolio/Utility/Constants.dart';

class NavBar extends StatefulWidget {
  // BuildContext pageContext;
  // NavBar({required this.pageContext});
  final int page;
  NavBar({required this.page});
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with SingleTickerProviderStateMixin {
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
      duration: Duration(seconds: 1),
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
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
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
                child: Row(
                  children: [
                    NavItem(
                      skills: 'Skills',
                      pageNo: 1,
                      cur: widget.page,
                    ),
                    // buildInkWell('Skills', 0),
                    NavItem(
                      skills: 'Projects',
                      pageNo: 2,
                      cur: widget.page,
                    ),
                    NavItem(
                      skills: 'Resume',
                      pageNo: 3,
                      cur: widget.page,
                    ),
                  ],
                ),
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
                Navigator.of(context).pushReplacementNamed('/Skills');
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
                Navigator.of(context).pushReplacementNamed('/Projects',
                    arguments: {'key': Project});
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
                Navigator.of(context).pushReplacementNamed('/Projects',
                    arguments: GlobalKey<ProjectsState>());
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

class NavItem extends StatefulWidget {
  final String skills;
  final int pageNo;
  final int cur;
  NavItem({required this.skills, required this.pageNo, required this.cur});
  @override
  _NavItemState createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  late Color kTextColor;

  @override
  void initState() {
    super.initState();
    kTextColor = widget.pageNo != widget.cur ? kWhite : Colors.pink;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.pageNo != widget.cur)
          Navigator.pushReplacementNamed(
            context,
            '/' + widget.skills,
          );
      },
      onHover: (isInside) {
        setState(() {
          if (widget.pageNo != widget.cur) if (isInside) {
            kTextColor = Colors.pinkAccent;
          } else {
            kTextColor = kWhite;
          }
        });
      },
      child: Card(
        color: kCardBackground,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14),
          child: Text(
            widget.skills,
            style: GoogleFonts.titilliumWeb(
              color: kTextColor,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
