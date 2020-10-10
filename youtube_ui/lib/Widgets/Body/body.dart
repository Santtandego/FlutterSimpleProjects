import 'package:flutter/material.dart';


import 'package:youtube_ui/Components/constants_values.dart';
import 'AppBarBody/appbar_body.dart';
import 'BackgroundBody/background_body.dart';
import 'ContentBody/content_body.dart';
import 'DescriptionBody/description_body.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          BackgroundBody(),
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              color: aColor,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 370, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarBody(),
                  DescriptionBody(),
                  ContentBody(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}








