import 'package:flutter/material.dart';
import 'package:google_ui/Components/uniques.dart';

import 'c_color.dart';

List<Widget> actions(){
  return [
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

class ContentBody extends StatelessWidget {
  const ContentBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: backgColor,
      child: Column(
        children: [
          SizedBox(height: size.height * 0.2,),
          GoogleWord(),
          SizedBox(height: size.height * 0.04),
          TextFieldBox(),
          SizedBox(height: size.height * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonSearch(title: '  Search on Google  ',),
              SizedBox(width: 20),
              ButtonSearch(title: '  I feel lucky  ',)
            ],
          )
        ],
      ),
    );
  }
}

class ButtonSearch extends StatelessWidget {

  final String title;

  const ButtonSearch({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      height: 40,
      color: Colors.grey[200],
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.grey[700],
        ),
      )
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
      GoogleText(title: 'o', color: oeColor,),
      GoogleText(title: 'o', color: ooColor,),
      GoogleText(title: 'g',),
      GoogleText(title: 'l', color: lColor,),
      GoogleText(title: 'e', color: oeColor,),
      ]
    );
  }
}

class GoogleText extends StatelessWidget {

  final String title;
  final Color color;

  const GoogleText({
    Key key,
    this.title,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color ?? gColor,
        fontFamily: 'KronaOne',
        fontSize: 70,
      ),
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
          height: 50,
          decoration: BoxDecoration(
            color: backgColor,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
              )
            ]
          ),
          child: TextField(
            onChanged: (val) {},
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              icon: Icon(Icons.search),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              suffixIcon: Icon(
                Icons.mic_outlined,
                color: gColor.withOpacity(0.6),
              )
            ),
          ),
        )
      ],
    );
  }
}



