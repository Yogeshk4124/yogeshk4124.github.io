import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfoliom/Pages/Skills.dart';

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
  @override
  Widget build(BuildContext context) {
    InkWell buildInkWell(String text, int index) {
      return InkWell(
        onTap: () {
          Navigator.pushReplacementNamed(context, navLinks[index]);
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
      ),
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
            GestureDetector(
              onTap: () {},
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
    );
  }
}
