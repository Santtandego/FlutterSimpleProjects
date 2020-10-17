import 'package:flutter/material.dart';

import 'components.dart';

const backgColor = Color(0xFF9C5CBC);

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 90,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: backgColor,
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 4,
            )
          ]
        ),
        child: Center(
          child: Text(
            'Sign In',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 35),
        AppBarTextLeading(title: 'News',),
        AppBarTextLeading(title: 'Sports',),
        AppBarTextLeading(title: 'Finance',),
        AppBarTextLeading(title: 'Politics',),
        AppBarTextLeading(title: 'Entertainment',),
        AppBarTextLeading(title: 'Lifestyle',),
        AppBarTextLeading(title: 'Movies',),
        AppBarTextLeading(title: 'Shopping',),
        Spacer(),
        IconAppBar(),
        AppBarTextLeading(title: 'Menu', offset: 70,),
        AppBarButton(),
        SizedBox(width: 25,)
      ],
    );
  }
}

class LogoText extends StatelessWidget {
  const LogoText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'yahoo!',
        style: TextStyle(
          fontSize: 130,
          color: Colors.white,
          fontFamily: 'Josefin',
          fontWeight: FontWeight.w900
        ),
      ),
    );
  }
}
