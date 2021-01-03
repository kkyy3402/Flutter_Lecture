import 'package:flutter/material.dart';
import 'package:navigator_example/Common/CommonDrawer.dart';
import 'package:navigator_example/Pages/MainPage.dart';

import 'Pages/Page1.dart';
import 'Pages/Page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/" : (context) => MainPage(),
        "/page1" : (context) => Page1(),
        "/page2" : (context) => Page2()
      },
    );
  }
}
