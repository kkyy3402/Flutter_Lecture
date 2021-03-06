import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Model/MemoItem.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController _contentTextController;

  @override
  void initState() {
    super.initState();

    _contentTextController = TextEditingController();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("아이템을 추가해주세요"),
      ),
      body: Consumer<MemoItem>(
        builder: (widget, state, child){
          return Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.center,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [

                  Text(
                    "제목을 입력해주세요",
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),

                  SizedBox(
                    height: 32,
                  ),

                  TextField(
                    controller: _contentTextController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder()
                    ),
                  ),

                  SizedBox(
                    height: 16,
                  ),

                  CupertinoButton(
                      child: Text("등록하기"),
                      onPressed: (){
                        state.addMemo(_contentTextController.text);
                        Navigator.pop(context);
                      }
                  )

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
