import 'dart:math';

import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("플러스 버튼을 눌러주세요")),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            list.add("${Random().nextInt(2000)}");
          });
        },
        child: Icon(
            Icons.add
        ),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 30),
              height: 50,
              child: Text("${list[index]}")
          );
        },
      ),
    );
  }

}