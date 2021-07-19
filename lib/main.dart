import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'Pages/MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, widget) =>
          ResponsiveWrapper.builder(MyHomePage(title: ""),
              maxWidthLandscape: double.infinity,
              minWidth: 480,
              defaultScale: true,
              breakpoints: [
                ResponsiveBreakpoint.resize(480, name: MOBILE),
                ResponsiveBreakpoint.autoScale(800, name: TABLET),
                ResponsiveBreakpoint.resize(1000, name: DESKTOP),
              ],
              background: Container(color: Color(0xFFF5F5F5))),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
