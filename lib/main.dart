import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:portfolio/Pages/CustomWebView.dart';
import 'package:portfolio/Pages/AnimatedSkillDisplay.dart';
import 'package:portfolio/Pages/PageOutlook.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

import 'Pages/MyHomePage.dart';
import 'Pages/ProjectsPage.dart';
import 'Pages/Resume.dart';
import 'Pages/SkillsPage.dart';
import 'Utility/keys.dart';

void main() {
  runApp(MyApp());
}

// final homeKey = GlobalKey<MyHomePageState>();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        maxWidthLandscape: double.infinity,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          // ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          // ResponsiveBreakpoint.resize(900, name: TABLET),
          // ResponsiveBreakpoint.autoScale(900, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
        background: Container(
          color: Color(0xFFF5F5F5),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (a) => PageOutlook(
              key: POKey,
            ),
        '/Skills': (a) => Skills(),
        '/Projects': (a) => Projects(
              key: projectKey,
            ),
        '/Resume': (a) => Resume(),
      },
    );
  }
}
