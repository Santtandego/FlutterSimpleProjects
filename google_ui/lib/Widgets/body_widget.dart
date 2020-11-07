import 'package:flutter/material.dart';
import 'package:google_ui/Components/colors.dart';
import 'package:google_ui/Components/components.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: bColor,
      child: Column(
        children: [
          SizedBox(height: size.height * 0.12,),
          GoogleWord(),
          SizedBox(height: size.height * 0.04),
          TextFieldBox(),
          SizedBox(height: size.height * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonSearch(title: '  Google Search  ',),
              SizedBox(width: 20),
              ButtonSearch(title: "  I'm Felling Lucky  ",)
            ],
          )
        ],
      ),
    );
  }
}