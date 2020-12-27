import 'package:flutter/material.dart';
import 'package:flutter_app/SecondPage.dart';
import 'package:flutter_app/SimpleState.dart';
import 'package:provider/provider.dart';

import 'FirstPage.dart';

void main() {
  runApp(ChangeNotifierProvider(
    child: MyApp(),
    create: (context) => SimpleState(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => FirstPage(),
        '/secondPage': (BuildContext context) => SecondPage(),
      },
    );
  }
}



