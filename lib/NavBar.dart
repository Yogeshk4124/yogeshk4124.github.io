import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<Color> navItemBgColor = [Colors.black87, Colors.black87, Colors.black87],
      navItemTextColor = [Colors.white, Colors.white, Colors.white];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1),
      ),
      height: 50,
      child: Row(
        children: [
          Expanded(
            flex: 3,
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
                    child: buildInkWell('Resume', 1),
                  ),
                  Expanded(
                    child: buildInkWell('Contact Me', 2),
                  ),
                ],
                // VerticalDivider(
                //   color: Colors.white,
                // ),
              ),
            )
          else
            GestureDetector(
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

  InkWell buildInkWell(String text, int index) {
    return InkWell(
      onTap: () {},
      onHover: (isInside) {
        print(isInside);
        setState(() {
          if (isInside) {
            navItemBgColor[index] = Colors.white;
            navItemTextColor[index] = Colors.black87;
          } else {
            navItemBgColor[index] = Colors.black87;
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

  onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        break;
      case 1:
        break;
      case 2:
        break;
    }
  }
}
