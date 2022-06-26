import 'package:flutter/material.dart';

import 'package:music_player/class/TabBarView.dart';
import 'package:music_player/class/imageView.dart';
import 'package:music_player/controller/controllerMusic.dart';
import 'package:music_player/controller/controllerScreen.dart';
import 'package:music_player/view/MyAppBar.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    ControllerMusic controllerMusic = Provider.of(context);
    ControllerScreen screen = Provider.of(context);

    return Scaffold(
        appBar: MyAppBar(width: size),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Popular Books",
                      style: TextStyle(fontSize: 30),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                width: size,
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controllerMusic.listMusic.length,
                    itemBuilder: (context, index) => ImageView(
                        music: controllerMusic.listMusic[index],
                        i: index,
                        prees: () {})),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: size,
                height: 300,
                child: TabBarViewWidget(
                  
                  item: screen.itemClick,
                ),
              ),
            ],
          ),
        ));
  }
}
