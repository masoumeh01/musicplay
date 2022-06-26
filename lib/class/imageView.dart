import 'package:flutter/material.dart';
import 'package:music_player/class/music.dart';

class ImageView extends StatelessWidget {
  ImageView(
      {Key? key, required this.music, required this.i, required this.prees});
  final Music music;
  int i;
  final Function() prees;
  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              music.imageMusic,
            ),
            fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(15),
      ),
      height: 150,
      width: 220,
    );
  }
}
