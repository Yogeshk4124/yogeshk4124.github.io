import 'dart:async';
import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Components/SkillDetailsContainer.dart';
import 'package:portfolio/Utility/Constants.dart';

class BarChartSample1 extends StatefulWidget {
  final List<Color> availableColors = [
    Colors.purpleAccent,
    Colors.yellow,
    Colors.lightBlue,
    Colors.orange,
    Colors.pink,
    Colors.redAccent,
  ];
  final double chartWidth, chartHeight;
  BarChartSample1({required this.chartWidth, required this.chartHeight});
  @override
  State<StatefulWidget> createState() => BarChartSample1State();
}

class BarChartSample1State extends State<BarChartSample1> {
  // final Color barBackgroundColor = const Color(0xff72d8bf);
  final Color barBackgroundColor = const Color(0xff787a7b);
  final Duration animDuration = const Duration(milliseconds: 250);

  int touchedIndex = -1;

  bool isPlaying = false;
  double height = 0;
  double width = 0;
  double margin = 0;
  String currentSkill = '';
  String skill = '';

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          width: widget.chartWidth,
          height: widget.chartHeight,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            color: kCardBackground,
            shadowColor: Colors.white,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        'Skills',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Click the bar to see details',
                        style: TextStyle(
                            // color: const Color(0xff379982),
                            color: Colors.blueAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 38,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: BarChart(
                            // isPlaying ? randomData() : mainBarData(),
                            mainBarData(), swapAnimationDuration: animDuration,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        AnimatedContainer(
          margin: EdgeInsets.symmetric(horizontal: margin, vertical: 20),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          duration: Duration(seconds: 1),
          height: height,
          width: width,
          curve: Curves.linear,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          // child: CustomBuilder.ListbuildHandler(skill),
          child:
              skill != '' ? SkillDetailsContainer(skill: skill) : Container(),
        ),
      ],
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color barColor = const Color(0xffd3d4d4),
    double width = 22,
    List<int> showTooltips = const [],
  }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          y: isTouched ? y : y,
          colors: isTouched ? [Colors.yellow] : [barColor],
          width: width,
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            y: 100,
            colors: [barBackgroundColor],
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, 80, isTouched: i == touchedIndex);
          case 1:
            return makeGroupData(1, 80, isTouched: i == touchedIndex);
          case 2:
            return makeGroupData(2, 60, isTouched: i == touchedIndex);
          case 3:
            return makeGroupData(3, 70, isTouched: i == touchedIndex);
          case 4:
            return makeGroupData(4, 75, isTouched: i == touchedIndex);
          case 5:
            return makeGroupData(5, 60, isTouched: i == touchedIndex);
          case 6:
            return makeGroupData(6, 75, isTouched: i == touchedIndex);
          default:
            return throw Error();
        }
      });

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: kBackground,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              switch (group.x.toInt()) {
                case 0:
                  skill = 'Flutter';
                  break;
                case 1:
                  skill = 'C++';
                  break;
                case 2:
                  skill = 'Python';
                  break;
                case 3:
                  skill = 'Android';
                  break;
                case 4:
                  skill = 'HTML';
                  break;
                case 5:
                  skill = 'JavaScript';
                  break;
                case 6:
                  skill = 'CSS';
                  break;
                default:
                  throw Error();
              }
              return BarTooltipItem(
                skill + '\n',
                TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: (rod.y).toString(),
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              );
            }),
        touchCallback: (barTouchResponse) {
          if (barTouchResponse.clickHappened &&
              MediaQuery.of(context).size.width > 800) {
            setState(() {
              height = widget.chartHeight;
              margin = 50;
              width = 300;
              currentSkill = skill;
              touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
            });
          } else if (barTouchResponse.spot != null &&
              barTouchResponse.touchInput is! PointerDownEvent &&
              MediaQuery.of(context).size.width < 800) {
            setState(() {
              height = widget.chartHeight;
              margin = 50;
              width = 300;
              currentSkill = skill;
              touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
            });
          }
          // else if (barTouchResponse.spot != null &&
          //     barTouchResponse.touchInput is! PointerUpEvent &&
          //     barTouchResponse.touchInput is! PointerExitEvent) {
          //   setState(() {
          //     // touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
          //   });
          // }
          else {
            touchedIndex = -1;
          }
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          margin: 16,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return 'Flutter';
              case 1:
                return 'C++';
              case 2:
                return 'Python';
              case 3:
                return 'Android';
              case 4:
                return 'HTML';
              case 5:
                return 'JavaScript';
              case 6:
                return 'CSS';
              default:
                return '';
            }
          },
        ),
        leftTitles: SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
    );
  }

  BarChartData randomData() {
    return BarChartData(
      barTouchData: BarTouchData(
        enabled: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          margin: 16,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return 'M';
              case 1:
                return 'T';
              case 2:
                return 'W';
              case 3:
                return 'T';
              case 4:
                return 'F';
              case 5:
                return 'S';
              case 6:
                return 'S';
              default:
                return '';
            }
          },
        ),
        leftTitles: SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[
                    Random().nextInt(widget.availableColors.length)]);
          case 1:
            return makeGroupData(1, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[
                    Random().nextInt(widget.availableColors.length)]);
          case 2:
            return makeGroupData(2, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[
                    Random().nextInt(widget.availableColors.length)]);
          case 3:
            return makeGroupData(3, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[
                    Random().nextInt(widget.availableColors.length)]);
          case 4:
            return makeGroupData(4, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[
                    Random().nextInt(widget.availableColors.length)]);
          case 5:
            return makeGroupData(5, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[
                    Random().nextInt(widget.availableColors.length)]);
          case 6:
            return makeGroupData(6, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[
                    Random().nextInt(widget.availableColors.length)]);
          default:
            return throw Error();
        }
      }),
    );
  }

  Future<dynamic> refreshState() async {
    setState(() {});
    await Future<dynamic>.delayed(
        animDuration + const Duration(milliseconds: 50));
    if (isPlaying) {
      await refreshState();
    }
  }
}
