import 'package:flutter/cupertino.dart';

class MemoItem extends ChangeNotifier {

  List<String> _memoList = [];

  void addMemo(String memo){
    _memoList.add(memo);
    notifyListeners();
  }

  List<String> getMemo(){
    return _memoList;
  }

  void removeMemo(int index){
    _memoList.removeAt(index);
    notifyListeners();
  }

}