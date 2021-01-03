import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : Container(
          child: Column(
            children: [

              CupertinoButton(
                child: Text("페이지 1 보기"),
                onPressed: (){
                  Navigator.pushNamed(context, "/page1");
                },
              ),

              CupertinoButton(
                child: Text("페이지 2 보기"),
                onPressed: (){
                  Navigator.pushNamed(context, "/page2");
                },
              )

            ],
          ),
        )
    );
  }
}
