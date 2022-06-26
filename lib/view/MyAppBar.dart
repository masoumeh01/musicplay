import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements  PreferredSizeWidget{
  final width;
  MyAppBar({Key ? key,required this.width }):super(key: key);
  @override
  Widget build(BuildContext context) {


    return Container(
       margin: const EdgeInsets.only(right: 20, left: 20, top: 30),
  
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Icon(Icons.grid_view),
        Row(
          children: [
            Icon(Icons.search),
            Icon(Icons.notifications),
          ],
        )
      ]),
    );
  }

  @override

  Size get preferredSize => Size(width,56);
}
