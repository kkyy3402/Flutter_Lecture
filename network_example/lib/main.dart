import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Container(
        child: CupertinoButton(
          onPressed: (){
            fetchDataFromSvr();
          },
          child: Text("데이터 가져오기"),
        ),
      ),
    );
  }

  fetchDataFromSvr() async {

    //네트웍을 통해서 데이터를 가져온다.
    var result = await http.get('https://jsonplaceholder.typicode.com/posts/1');
    print("result : ${result.body}");

    //json데이터를 파싱한다.
    var decodedJsonObject = jsonDecode(result.body);

    var userId = decodedJsonObject["userId"];
    var id = decodedJsonObject["id"];
    var title = decodedJsonObject["title"];
    var body = decodedJsonObject["body"];

    print("id : $id");

  }

}


