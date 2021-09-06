import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:yogeshk4124.github.io/Pages/PageOutlook.dart';
import 'Pages/ProjectsPage.dart';
import 'Pages/Resume.dart';
import 'Pages/SkillsPage.dart';

GlobalKey<PageOutlookState> PoKey = GlobalKey<PageOutlookState>();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yogesh Kumar',
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
              key: PoKey,
            ),
        '/Skills': (a) => Skills(),
        '/Projects': (a) => Projects(),
        '/Resume': (a) => Resume(),
      },
    );
  }
}
