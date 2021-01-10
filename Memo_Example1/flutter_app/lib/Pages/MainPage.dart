import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/RegisterPage.dart';
import 'package:flutter_app/Model/MemoItem.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List<String> list = [];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("메모를 추가해주세요")),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            //list.add("${Random().nextInt(2000)}");
            Navigator.pushNamed(context, '/secondPage');
          });
        },
        child: Icon(
            Icons.add
        ),
      ),
      body: Consumer<MemoItem>(
        builder: (context, state, child){
          return ListView.builder(
            itemCount: state.getMemo().length,
            //itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: (){
                  state.removeMemo(index);
                },
                child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    height: 50,
                    child: Text(
                        "${state.getMemo()[index]}"
                    )
                ),
              );
            },
          );
        },
      ),
    );
  }

}