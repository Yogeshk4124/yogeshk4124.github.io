import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphx/graphx.dart';
import 'package:portfoliom/Pages/Skills.dart';

import 'LinedButtonScreen.dart';

class NavBar extends StatefulWidget {
  // BuildContext pageContext;
  // NavBar({required this.pageContext});
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<Color> navItemBgColor = [black, black, black],
      navItemTextColor = [Colors.white, Colors.white, Colors.white];
  List navLinks = ['/Skills', '/Projects', '/Projects'];
  late bool isVisible = false;
  double height = 0;
  double height1 = 0;
  double height2 = 0;
  @override
  Widget build(BuildContext context) {
    InkWell buildInkWell(String text, int index) {
      return InkWell(
        onTap: () {
          Navigator.pushReplacementNamed(
            context,
            navLinks[index],
          );
          // Navigator.pushNamed(context, '/Skills');
          // Navigator.of(context).push(
          //     MaterialPageRoute(builder: (pageContext) => navLinks[index]));
        },
        onHover: (isInside) {
          print(isInside);
          setState(() {
            if (isInside) {
              navItemBgColor[index] = Colors.white;
              navItemTextColor[index] = black;
            } else {
              navItemBgColor[index] = black;
              navItemTextColor[index] = Colors.white;
            }
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: navItemBgColor[index],
            border: Border(
              left: BorderSide(width: 1.0, color: Colors.white),
              right: BorderSide(width: 1.0, color: Colors.white),
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              color: navItemTextColor[index],
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1),
        color: black,
      ),
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/');
                    },
                    onHover: (val) {},
                    child: Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Yogesh',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                if (MediaQuery.of(context).size.width > 960)
                  Expanded(
                    flex: 2,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SceneBuilderWidget(
                          builder: () =>
                              SceneController(front: LinedButtonScene()),
                        ),
                        Expanded(
                          child: buildInkWell('Skills', 0),
                        ),
                        Expanded(
                          child: buildInkWell('Project', 1),
                        ),
                        Expanded(
                          child: buildInkWell('Resume', 2),
                        ),
                      ],
                    ),
                  )
                else
                  InkWell(
                    onTap: () {
                      setState(() {
                        isVisible = !isVisible;
                        if (isVisible) {
                          height = 30;
                          height1 = 30;
                          height2 = 30;
                        } else {
                          height = 0;
                          height1 = 0;
                          height2 = 0;
                        }
                      });
                    },
                    child: Container(
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(width: 1.0, color: Colors.white),
                          right: BorderSide(width: 1.0, color: Colors.white),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/Skills');
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              height: height,
              curve: Curves.easeIn,
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.white),
                  top: BorderSide(color: Colors.white),
                ),
              ),
              child: Text(
                'Skills',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/Projects');
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              height: height,
              curve: Curves.easeIn,
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.white),
                  top: BorderSide(color: Colors.white),
                ),
              ),
              child: Text(
                'Projects',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/Projects');
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              height: height,
              curve: Curves.easeIn,
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.white),
                  top: BorderSide(color: Colors.white),
                ),
              ),
              child: Text(
                'Resume',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
