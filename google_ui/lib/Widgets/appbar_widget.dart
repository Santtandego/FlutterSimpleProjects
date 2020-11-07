import 'package:flutter/material.dart';
import 'package:google_ui/Components/colors.dart';
import 'package:google_ui/Components/uniques.dart';

List<Widget> actions(){
  return [
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 25,),
        AppBarText(title: 'About',),
        AppBarText(title: 'Store',),
      ],
    ),
    Spacer(),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppBarText(title: 'Gmail',),
        AppBarText(title: 'Images',),
        AppBarIcon(),
        AppBarButton(),
      ],
    ),
    SizedBox(width: 35),
  ];
}

PreferredSizeWidget appBarWidget (){
  return AppBar(
    backgroundColor: bColor,
      elevation: 0.0,
      actions: actions(),
    );
}