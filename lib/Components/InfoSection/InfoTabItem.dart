import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Pages/SkillsPage.dart';

import '../../Utility/Constants.dart';
import '../../Utility/keys.dart';

class InfoTabItem extends StatefulWidget {
  final String text;
  final int idx;
  final bool selected;
  const InfoTabItem({
    Key? key,
    required this.text,
    required this.idx,
    required this.selected,
  }) : super(key: key);

  @override
  InfoTabItemState createState() => InfoTabItemState();
}

class InfoTabItemState extends State<InfoTabItem> {
  Color bg = kCardBackground, fg = kWhite;

  @override
  void initState() {
    // TODO: implement initState
    if (widget.selected) setSelected(true);
    super.initState();
  }

  setSelected(bool c) {
    setState(() {
      if (c) {
        bg = Colors.pink;
        fg = kWhite;
      } else {
        fg = kWhite;
        bg = kCardBackground;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool LessWidthMQ(double x) {
      return MediaQuery.of(context).size.width < x;
    }

    return InkWell(
      onTap: () {
        eventHub.fire('reset', widget.idx);
        infoPanelKey.currentState!.changeOption(widget.idx);
        if (widget.idx == 1)
          k1.currentState!.setSelected(true);
        else
          k1.currentState!.setSelected(false);
        if (widget.idx == 2)
          k2.currentState!.setSelected(true);
        else
          k2.currentState!.setSelected(false);
        if (widget.idx == 3)
          k3.currentState!.setSelected(true);
        else
          k3.currentState!.setSelected(false);
        // homeKey.currentState!.setState(() {
        // homeKey.currentState!.changeOption(widget.idx);
        // });
      },
      onHover: (inside) {
        if (inside && bg == black) {
          setSelected(true);
        } else if (!widget.selected) {
          // print('run');
          setSelected(false);
        }
      },
      child: Container(
        width: LessWidthMQ(860) ? double.maxFinite : 400,
        height: 120,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.only(
            bottomLeft:
                widget.idx == 3 ? Radius.circular(50) : Radius.circular(0),
            topLeft: MediaQuery.of(context).size.width > 960 && widget.idx == 1
                ? Radius.circular(50)
                : Radius.circular(0),
            bottomRight:
                MediaQuery.of(context).size.width < 960 && widget.idx == 3
                    ? Radius.circular(50)
                    : Radius.circular(0),
          ),
        ),
        child: Text(
          widget.text,
          style: GoogleFonts.bungee(color: fg, fontSize: 30),
        ),
      ),
    );
  }
}
