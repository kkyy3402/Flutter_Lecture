import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.blueAccent,
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Text(
          "페이지 1입니다!",
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
