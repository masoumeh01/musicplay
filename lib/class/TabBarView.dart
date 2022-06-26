import 'package:flutter/material.dart';
import 'package:music_player/class/music.dart';
import 'package:music_player/controller/controllerMusic.dart';

import 'package:music_player/controller/controllerScreen.dart';
import 'package:music_player/res/MyColors.dart';
import 'package:music_player/view/showAduio.dart';
import 'package:provider/provider.dart';

class TabBarViewWidget extends StatelessWidget {
  TabBarViewWidget({Key? key, required this.item, })
      : super(key: key);
  int item;
    Music? musicI;

  @override
  Widget build(BuildContext context) {
    ControllerMusic music = Provider.of(context);
    final size=MediaQuery.of(context).size;

    return DefaultTabController(
      length: 3,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: 50,
            color: MyColors.tabVarViewColor,
            child: TabBar(
                labelColor: Colors.deepOrange,
                unselectedLabelColor: Colors.white,
                tabs: [
                  Tab(
                    child: InkWell(
                      // onTap: () {
                      //   Provider.of<ControllerScreen>(context, listen: false)
                      //       .changeitemChek(0);
                      // },
                      child: Container(
                        decoration: BoxDecoration(
                          color: MyColors.menu1Color,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: MyColors.tabVarViewColor,
                                offset: Offset(0.5, 0.5))
                          ],
                        ),
                        alignment: Alignment.center,
                        width: 100,
                        height: 60,
                        child: Text(
                          "new",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: InkWell(
                      // onTap: () {
                      //   Provider.of<ControllerScreen>(context, listen: false)
                      //       .changeitemChek(1);
                      // },
                      child: Container(
                        width: 100,
                        height: 60,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: MyColors.menu2Color,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: MyColors.tabVarViewColor,
                                offset: Offset(0.5, 0.5))
                          ],
                        ),
                        child: Text(
                          "Popular",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: InkWell(
                      // onTap: () {
                      //   Provider.of<ControllerScreen>(context, listen: false)
                      //       .changeitemChek(2);
                      // },
                      child: Container(
                        width: 100,
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: MyColors.menu3Color,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: MyColors.tabVarViewColor,
                                offset: Offset(0.5, 0.5))
                          ],
                        ),
                        child: Text(
                          "Terding",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
          Expanded(
            child: Container(
             
                
              child: TabBarView(children: [
                ShowAduio(),
                
                Container(
                
                  child: Text("MEDIUM Body"),
                ),
                Container(
                  child: Text("LARGE Body"),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
