import 'package:flutter/material.dart';

import 'Components/components.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/yahoo_backg.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: BodyWidget(),
      ),
    );
  }
}
