import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Models/project.dart';
import 'package:portfolio/Pages/ProjectsPage.dart';
import 'package:portfolio/Pages/SkillsPage.dart';

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
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    )..repeat();
    isVisible = false;
    height = 0;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(color: Colors.white, width: 1),
              top: BorderSide(color: Colors.white, width: 1),
              right: BorderSide(color: Colors.white, width: 1),
            ),
          ),
          height: 50,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Visibility(
                visible: !(MediaQuery.of(context).size.width >= 800),
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
                  },
                  child: Container(
                    width: 40,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                  onHover: (val) {},
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(color: Colors.white, width: 1),
                        bottom: BorderSide(color: Colors.white, width: 1),
                      ),
                    ),
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Yogesh',
                      style: GoogleFonts.bungeeShade(
                        //rocksalt,arbutus,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: MediaQuery.of(context).size.width >= 800,
                child: Expanded(
                  flex: 5,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: NavItem(
                          skills: 'Skills',
                          pageNo: 1,
                          cur: widget.page,
                        ),
                        // buildInkWell('Skills', 0),
                      ),
                      Expanded(
                        child: NavItem(
                          skills: 'Projects',
                          pageNo: 2,
                          cur: widget.page,
                        ),
                      ),
                      Expanded(
                        child: NavItem(
                          skills: 'Resume',
                          pageNo: 3,
                          cur: widget.page,
                        ),
                      ),
                    ],
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
                decoration: BoxDecoration(
                  border: Border(
                    bottom: MediaQuery.of(context).size.width >= 800
                        ? BorderSide.none
                        : BorderSide(color: Colors.white, width: 1),
                    left: BorderSide(color: Colors.white, width: 1),
                    right: BorderSide(color: Colors.white, width: 1),
                  ),
                ),
                child: height > 25
                    ? Text(
                        'Skills',
                        style: TextStyle(color: Colors.white),
                      )
                    : Text(''),
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
                decoration: BoxDecoration(
                  border: Border(
                    bottom: MediaQuery.of(context).size.width >= 800
                        ? BorderSide.none
                        : BorderSide(color: Colors.white, width: 1),
                    left: BorderSide(color: Colors.white, width: 1),
                    right: BorderSide(color: Colors.white, width: 1),
                  ),
                ),
                child: height > 25
                    ? Text(
                        'Project',
                        style: TextStyle(color: Colors.white),
                      )
                    : Text(''),
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
                decoration: BoxDecoration(
                  border: Border(
                    bottom: MediaQuery.of(context).size.width >= 800
                        ? BorderSide.none
                        : BorderSide(color: Colors.white, width: 1),
                    left: BorderSide(color: Colors.white, width: 1),
                    right: BorderSide(color: Colors.white, width: 1),
                  ),
                ),
                child: height > 25
                    ? Text(
                        'Resume',
                        style: TextStyle(color: Colors.white),
                      )
                    : Text(''),
              ),
            ),
          ],
        ),
      ],
    );
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
  Color kBg = black;
  Color kFg = Colors.white;
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
            kBg = Colors.white;
            kFg = black;
          } else {
            kBg = black;
            kFg = Colors.white;
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: kBg,
          border: Border(
            left: BorderSide(width: 1.0, color: Colors.white),
            bottom: BorderSide(
                width: 1.0,
                color: widget.pageNo == widget.cur ? black : Colors.white),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          widget.skills,
          style: GoogleFonts.bungee(
            color: kFg,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
