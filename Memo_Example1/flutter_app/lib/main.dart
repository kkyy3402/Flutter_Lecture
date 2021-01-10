import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/RegisterPage.dart';
import 'package:flutter_app/Model/MemoItem.dart';
import 'package:provider/provider.dart';

import 'Pages/MainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MemoItem(),
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => MainPage(),
          '/secondPage': (BuildContext context) => RegisterPage(),
        },
      ),
    );
  }
}



