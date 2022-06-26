import 'package:flutter/material.dart';
import 'package:music_player/class/TabBarView.dart';
import 'package:music_player/controller/controllerMusic.dart';
import 'package:music_player/controller/controllerScreen.dart';

import 'package:music_player/view/MyHomePage.dart';
import 'package:music_player/view/PlayerPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (c) => ControllerMusic(),
        ),
        ChangeNotifierProvider(
          create: (c) => ControllerScreen(),
        ),
        
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    ControllerScreen screens = Provider.of<ControllerScreen>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Navigator(
        pages: [
          MaterialPage(child: MyHomePage()),
          if (screens.nameScreen == '/PlayerPage') MaterialPage(child: PlayerPage()),
        ],
        onPopPage: (route, result) {
          bool popStatus = route.didPop(result);
          if (popStatus = true)
            Provider.of<ControllerScreen>(context, listen: false)
                .changeScreen('/');
          return popStatus;
        },
      ),
    );
  }
}
