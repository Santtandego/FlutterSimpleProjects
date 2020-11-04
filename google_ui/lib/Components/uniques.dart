import 'package:flutter/material.dart';

import 'colors.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: aColor,
      onPressed: (){},
      child: Text(
        'Log in',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
        )
    );
  }
}

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: (){},
        child: Icon(
          Icons.view_module,
          color: Colors.grey,
          ),
      )
    );
  }
}

class AppBarText extends StatelessWidget {

  final String title;

  const AppBarText({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: () {},
        child: Container(
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontFamily: 'RobotoC',
              fontSize: 15
            ),
          ),
        ),
      ),
    );
  }
}