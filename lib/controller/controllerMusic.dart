import 'package:flutter/material.dart';
import 'package:music_player/class/music.dart';

class ControllerMusic extends ChangeNotifier{
  List<Music> _list=[
    Music(nameMusic:"Naro_" ,imageMusic:"lib/assets/img/p1.jpg" ),
    Music(nameMusic:"Naro_" ,imageMusic:"lib/assets/img/p2.jpg" )
  ];

List <Music> get listMusic=>_list;

}