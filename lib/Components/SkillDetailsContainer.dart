import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Utility/Constants.dart';
import 'package:portfolio/Utility/Utility.dart';

class SkillDetailsContainer extends StatelessWidget {
  final skill;

  const SkillDetailsContainer({Key? key, this.skill}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var data = mySkills[skill]!;
    return ListView.builder(
      itemCount: data.title.length + 1,
      itemBuilder: (context, i) {
        if (i == 0)
          return Card(
            color: myColor[colorgenerator()],
            child: Text(
              skill,
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          );
        return Card(
          color: Color(0xff505050),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title[i - 1],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  data.subheading[i - 1],
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    data.body[i - 1],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    data.buttonText[i - 1],
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
