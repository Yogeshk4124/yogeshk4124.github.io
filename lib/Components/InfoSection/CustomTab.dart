import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Utility/Constants.dart';
import 'package:portfolio/Utility/keys.dart';

class CustomTabButtons extends StatefulWidget {
  @override
  createState() {
    return new CustomTabButtonsState();
  }
}

class CustomTabButtonsState extends State<CustomTabButtons> {
  List<RadioTab> sampleData = [];

  @override
  void initState() {
    super.initState();
    sampleData.add(new RadioTab(
      true,
      false,
      'Skills',
    ));
    sampleData.add(new RadioTab(
      false,
      false,
      'Projects',
    ));
    sampleData.add(new RadioTab(
      false,
      false,
      'Resume',
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: MediaQuery.of(context).size.width < 860,
          child: Container(
            child: Text(
              'Click on any button to know more.',
              style: TextStyle(color: kWhite),
            ),
          ),
        ),
        for (int index = 0; index < sampleData.length.toInt(); index++)
          InkWell(
            onTap: () {
              setState(() {
                sampleData.forEach((element) => element.isSelected = false);
                sampleData[index].isSelected = true;
              });
              infoPanelKey.currentState!.changeOption(index + 1);
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
            child: RadioTabItem(sampleData[index], index),
          ),
      ],
    );
  }
}

class RadioTabItem extends StatelessWidget {
  final RadioTab _item;
  final int index;
  RadioTabItem(this._item, this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width < 860 ? double.maxFinite : 400,
      height: 120,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: _item.isSelected ? kPink : kCardBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: index == 2 ? Radius.circular(50) : Radius.circular(0),
          topLeft: MediaQuery.of(context).size.width > 960 && index == 0
              ? Radius.circular(50)
              : Radius.circular(0),
          bottomRight: MediaQuery.of(context).size.width < 960 && index == 2
              ? Radius.circular(50)
              : Radius.circular(0),
        ),
      ),
      child: Text(
        _item.buttonText,
        style: GoogleFonts.bungee(
            color: _item.isSelected
                ? kWhite
                : _item.isHover
                    ? kPink
                    : kWhite,
            fontSize: 30),
      ),
    );
  }
}

class RadioTab {
  bool isSelected, isHover;
  final String buttonText;

  RadioTab(
    this.isSelected,
    this.isHover,
    this.buttonText,
  );
}
