import 'dart:math';

import 'package:flutter/material.dart';

import 'package:youtube_ui/Components/components.dart';
import 'package:youtube_ui/Components/constants_values.dart';

class LeadingButton extends StatefulWidget {

  final Function tap;

  LeadingButton({
    Key key,
    this.tap,
  })  : super(key: key);

  @override
  _LeadingButtonState createState() => _LeadingButtonState();
}

class _LeadingButtonState extends State<LeadingButton> {
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.tap,
      child: Icon(
        Icons.menu,
        size: 40,
        color: bColor,
      ),
    );
  }
}

class TitleAppBar extends StatelessWidget {
  
  const TitleAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          SizedBox(width: 90),
          Container(
            width: 55,
            height: 35,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/youtube_logo.png')
              )
            ),
          ),
          Text(
            'Youtube',
            style: TextStyle(
              fontFamily: 'Oswald',
              fontSize: 25
            ),
          ),
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
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        height: 0.5,
        width: 420,
        decoration: BoxDecoration(
          color: cColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextField(
          onChanged: (val) {},
          style: TextStyle(
            color: eColor,
          ),
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(
              fontSize: 20,
              color: eColor.withOpacity(0.6),
              fontWeight: FontWeight.bold,
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            suffixIcon: Icon(
              Icons.search,
              color: eColor.withOpacity(0.6),
            )
          ),
        ),
      ),
    );
  }
}

class IconsAppBarMiniRow extends StatelessWidget {
  const IconsAppBarMiniRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconAppBar(icon: Icons.videocam, offset: 26,),
        InkWell(
          onTap: (){},
          child: Transform(
            transform: Matrix4.rotationY(pi)..translate(-35),
            child: iconAppBarwiget(Icons.reply,),
          ),
        ),
        IconAppBar(icon: Icons.notification_important_sharp),
      ],
    );
  }
}

List<Widget> actions(){
    return [
      TitleAppBar(),
      SizedBox(width: 320),
      TextFieldBox(),
      Spacer(),
      IconsAppBarMiniRow(),
      ImageAvatar(image: 'assets/images/avatar_3.jpg', radius: 25,),
      SizedBox(width: 15,),
    ];
}
