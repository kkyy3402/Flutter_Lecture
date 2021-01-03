import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {

  int _countValue = 0 ;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("현재 숫자는 $_countValue 입니다"),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                child: Text("증가시키기"),
                onPressed: (){
                  setState(() {
                    _countValue = _countValue+1;
                  });
                },
              ),

              CupertinoButton(
                child: Text("감소시키기"),
                onPressed: (){
                  setState(() {
                    _countValue = _countValue-1;
                  });
                },
              )

            ],
          )




        ],
      ),
    );
  }
}
