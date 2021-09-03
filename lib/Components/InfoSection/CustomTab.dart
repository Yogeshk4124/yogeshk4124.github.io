import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Components/InfoSection/InfoPanel.dart';
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
  int opt = 1;

  @override
  void initState() {
    super.initState();
    sampleData.add(new RadioTab(
      true,
      false,
      'Education',
    ));
    sampleData.add(new RadioTab(
      false,
      false,
      'Experience',
    ));
    sampleData.add(new RadioTab(
      false,
      false,
      'Fun Facts',
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kCardBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            topLeft: MediaQuery.of(context).size.width < 960
                ? Radius.circular(20)
                : Radius.circular(50),
            topRight: Radius.circular(20),
            bottomRight: MediaQuery.of(context).size.width < 960
                ? Radius.circular(50)
                : Radius.circular(20)),
      ),
      child: Wrap(
        direction: Axis.horizontal,
        runAlignment: WrapAlignment.end,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Container(
            child: Column(
              children: [
                if (MediaQuery.of(context).size.width < 960)
                  InfoPanel(opt: opt),
                for (int index = 0; index < sampleData.length.toInt(); index++)
                  InkWell(
                    onTap: () {
                      setState(() {
                        opt = index + 1;
                        sampleData
                            .forEach((element) => element.isSelected = false);
                        sampleData[index].isSelected = true;
                        print(opt);
                      });
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
            ),
          ),
          if (MediaQuery.of(context).size.width > 960) InfoPanel(opt: opt),
        ],
        // InfoPanel(opt: opt),
      ),
    );
  }
}

class RadioTabItem extends StatefulWidget {
  final RadioTab _item;
  final int index;
  RadioTabItem(this._item, this.index);

  @override
  _RadioTabItemState createState() => _RadioTabItemState();
}

class _RadioTabItemState extends State<RadioTabItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width < 860 ? double.maxFinite : 400,
      height: 120,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: widget._item.isSelected ? kPink : kCardBackground,
        borderRadius: BorderRadius.only(
          bottomLeft:
              widget.index == 2 ? Radius.circular(50) : Radius.circular(0),
          topLeft: MediaQuery.of(context).size.width > 960 && widget.index == 0
              ? Radius.circular(50)
              : Radius.circular(0),
          bottomRight:
              MediaQuery.of(context).size.width < 960 && widget.index == 2
                  ? Radius.circular(50)
                  : Radius.circular(0),
        ),
      ),
      child: Text(
        widget._item.buttonText,
        style: GoogleFonts.bungee(
            color: widget._item.isSelected
                ? kWhite
                : widget._item.isHover
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
