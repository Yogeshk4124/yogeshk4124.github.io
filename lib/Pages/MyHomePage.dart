import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: (MediaQuery.of(context).size.width > 960)
              ? EdgeInsets.all(20)
              : EdgeInsets.zero,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  height: 50,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Yogesh',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      if (MediaQuery.of(context).size.width > 960)
                        VerticalDivider(
                          color: Colors.white,
                          width: 10,
                        ),
                      if (MediaQuery.of(context).size.width > 960)
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'articles',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              VerticalDivider(
                                color: Colors.white,
                              ),
                              Expanded(
                                child: Text(
                                  'articles',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              VerticalDivider(
                                color: Colors.white,
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  'articles',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        )
                      else
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              VerticalDivider(
                                color: Colors.white,
                                width: 10,
                              ),
                              Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              )
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  height: 350,
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      'Bonjour, I am Louis the front-end physiotherapist! 👨‍⚕️I can help with your flex issues.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
