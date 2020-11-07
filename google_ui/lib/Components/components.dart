import 'package:flutter/material.dart';

import 'colors.dart';


class GoogleText extends StatelessWidget {
  
  final String title;
  final Color color;

  const GoogleText({
    Key key,
    this.title,
    this.color
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color ?? cColor,
        fontFamily: 'Product',
        fontSize: 80,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class GoogleWord extends StatelessWidget {
  const GoogleWord({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GoogleText(title: 'G',),
        GoogleText(title: 'o', color: dColor,),
        GoogleText(title: 'o', color: eColor,),
        GoogleText(title: 'g',),
        GoogleText(title: 'l', color: fColor,),
        GoogleText(title: 'e', color: dColor,),
      ],
    );
  }
}

class TextFieldBox extends StatelessWidget {
  const TextFieldBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          alignment: Alignment.center,
          width: 600,
          height: 40,
          decoration: BoxDecoration(
            color: bColor,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: gColor,
              )
            ],
          ),
          child: TextField(
            onChanged: (val) {},
            style: TextStyle(
              color: hColor,
            ),
            decoration: InputDecoration(
              icon: Icon(
                Icons.search,
                size: 20,
                color: gColor,  
              ),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              suffixIcon: Icon(
                Icons.mic_outlined,
                color: cColor.withOpacity(0.6),
              )
            ),
          ),
        )
      ],
    );
  }
}

class ButtonSearch extends StatelessWidget {

  final String title;

  const ButtonSearch({
    Key key,
    this.title
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      height: 40,
      color: iColor,
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: jColor,
        ),
      ),
    );
  }
}



