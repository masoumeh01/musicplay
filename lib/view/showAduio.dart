import 'package:flutter/material.dart';
import 'package:music_player/controller/controllerMusic.dart';
import 'package:music_player/res/MyColors.dart';
import 'package:provider/provider.dart';

class ShowAduio extends StatelessWidget {
  const ShowAduio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    ControllerMusic music = Provider.of(context);
    return Container(
      width: 300,
      height: 100,
      decoration: BoxDecoration(
          
          color: MyColors.loveColor),
      child: Row(
        children: [
          Container(
          
            height: 90,
            width: 120,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(music.listMusic[0].imageMusic),
              fit: BoxFit.fill,
            )),
          ),
          Text("music1")
        ],
      ),
    );
  }
}
