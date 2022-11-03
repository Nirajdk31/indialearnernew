import 'package:flutter/material.dart';

class MobileHomePageProvider with ChangeNotifier{

  int _index = 0;

  int get index => _index;


  changeIndex(int position){
    _index = position;
    notifyListeners();
  }
}