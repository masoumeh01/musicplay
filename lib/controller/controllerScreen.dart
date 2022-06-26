import 'package:flutter/material.dart';

class ControllerScreen extends ChangeNotifier{
  
  String nameScreen='/';
  int itemClick=0;
  
  void changeScreen( String newScreen){
    nameScreen=newScreen;
    notifyListeners();

  }
  void changeitemChek(int id){
    this.itemClick=id;
    notifyListeners();
  }

}