import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Utility/Colors.dart';
import 'package:portfolio/main.dart';

class CustomNavButtons extends StatefulWidget {
  @override
  createState() {
    return new CustomNavButtonsState();
  }
}

class CustomNavButtonsState extends State<CustomNavButtons> {
  List<RadioNavItem> sampleData = [];

  @override
  void initState() {
    super.initState();
    sampleData.add(new RadioNavItem(
      true,
      false,
      'Home',
    ));
    sampleData.add(new RadioNavItem(
      false,
      false,
      'Skills',
    ));
    sampleData.add(new RadioNavItem(
      false,
      false,
      'Projects',
    ));
    sampleData.add(new RadioNavItem(
      false,
      false,
      'Resume',
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          for (int index = 0; index < sampleData.length.toInt(); index++)
            InkWell(
              onTap: () {
                if (sampleData[index].isSelected != true) {
                  setState(() {
                    sampleData.forEach((element) => element.isSelected = false);
                    sampleData[index].isSelected = true;
                  });
                  PoKey.currentState!.setState(() {
                    PoKey.currentState!.pageNumber = index;
                  });
                }
              },
              onHover: (c) {
                setState(() {
                  if (c && sampleData[index].isSelected != true) {
                    sampleData[index].isHover = true;
                  } else {
                    sampleData[index].isHover = false;
                  }
                });
              },
              child: new NavItem(sampleData[index]),
            )
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final RadioNavItem _item;
  NavItem(this._item);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: kCardBackground,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14),
        child: Text(
          _item.buttonText,
          style: GoogleFonts.titilliumWeb(
            color: _item.isSelected
                ? kPink
                : _item.isHover
                    ? kPink
                    : kWhite,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class RadioNavItem {
  bool isSelected, isHover;
  final String buttonText;

  RadioNavItem(
    this.isSelected,
    this.isHover,
    this.buttonText,
  );
}
