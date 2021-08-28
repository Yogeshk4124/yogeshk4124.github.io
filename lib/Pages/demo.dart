import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:portfolio/Utility/Constants.dart';

const double degrees2Radians = math.pi / 180.0;

// class Demo extends StatefulWidget {
//   @override
//   _DemoState createState() => _DemoState();
// }

// class _DemoState extends State<Demo> {
//   int _currentSliderValue = 6;

//   List<Color> colors = [
//     Colors.blue,
//     Colors.red,
//     Colors.yellow,
//     Colors.green,
//     Colors.purple,
//     Colors.orange,
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: Container(
//               width: double.infinity,
//               child: CustomPaint(
//                 painter: MyPainter(
//                   colors: colors.take(_currentSliderValue).toList(),
//                 ),
//               ),
//             ),
//           ),
//           Slider(
//             value: _currentSliderValue.toDouble(),
//             min: 2,
//             max: 6,
//             label: _currentSliderValue.toString(),
//             onChanged: (value) {
//               setState(() {
//                 _currentSliderValue = value.round();
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyPainter extends CustomPainter {
//   const MyPainter({
//     required this.colors,
//   }) : super();

//   final List<Color> colors;

//   @override
//   void paint(Canvas canvas, Size size) {
//     var paths = <Color, Path>{};
//     colors.asMap().forEach((index, color) {
//       var degree = 360 / colors.length * (index + 0.5);
//       var radian = degree * degrees2Radians;

//       var path = _onePath(radian, size);

//       if (index > 0) {
//         path = Path.combine(
//           PathOperation.difference,
//           path,
//           paths[colors[index - 1]]!,
//         );
//       }
//       if (index == colors.length - 1) {
//         paths[colors[0]] = Path.combine(
//           PathOperation.reverseDifference,
//           path,
//           paths[colors[0]]!,
//         );
//       }
//       paths[color] = path;
//     });

//     for (final color in colors) {
//       var path = paths[color];

//       final fillPaint = Paint()
//         ..color = color
//         ..style = PaintingStyle.fill;
//       canvas.drawPath(path!, fillPaint);

//       final strokePaint = Paint()
//         ..color = Color(0xFFC4C4C4)
//         ..style = PaintingStyle.stroke
//         ..strokeCap = StrokeCap.butt
//         ..strokeWidth = 10;

//       canvas.drawPath(path, strokePaint);
//     }
//   }

//   Path _onePath(double radian, Size size) {
//     var circleSize = 150.0;
//     var center = size.center(Offset.zero);
//     var maxSize = math.min(size.height, size.width) / 4;
//     var sin = math.sin(radian);
//     var cos = math.cos(radian);

//     var rect = Rect.fromLTWH(
//       center.dx - circleSize / 2 + (sin * maxSize),
//       center.dy - circleSize / 2 + (cos * maxSize),
//       circleSize,
//       circleSize,
//     );
//     return Path()
//       ..addRRect(
//         RRect.fromRectAndRadius(
//           rect,
//           Radius.circular(
//             rect.height / 2,
//           ),
//         ),
//       )
//       ..close();
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => true;
// }

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 900,
      height: 900,
      color: Colors.greenAccent,
      alignment: Alignment.center,
      child: Container(
        width: 600,
        height: 600,
        color: Colors.red,
        alignment: Alignment.center,
        child: Stack(
          alignment: AlignmentDirectional.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              // right: 0,
              // top: 30,
              top: -10,
              // bottom: 0,
              left: 60,
              width: 50,
              height: 50,
              child: CircleAvatar(
                radius: 20,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.amber,
                ),
              ),
            ),
            Positioned(
              right: 50,
              // top: 0,
              // bottom: 0,
              // left: 0,
              width: 50,
              height: 50,
              child: CircleAvatar(
                radius: 20,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              // right: 0,
              top: 60,
              // bottom: 0,
              // left: 0,
              width: 50,
              height: 50,
              child: CircleAvatar(
                radius: 20,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.pink,
                ),
              ),
            ),
            Positioned(
              // right: 0,
              // top: 0,
              bottom: 60,
              // left: 0,
              width: 50,
              height: 50,
              child: CircleAvatar(
                radius: 20,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.orange,
                ),
              ),
            ),
            Positioned(
              // right: 0,
              // top: 0,
              // left: 0,
              width: 50,
              height: 50,
              child: CircleAvatar(
                radius: 20,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.orange,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
