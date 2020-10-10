import 'package:flutter/material.dart';

class BackgroundBody extends StatelessWidget {
  const BackgroundBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/backg_landscape.jpg'),
          fit: BoxFit.cover,
        )
      ),
    );
  }
}