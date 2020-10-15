import 'package:flutter/material.dart';

import 'c_colors.dart';

class FABModulus extends StatelessWidget {

  final Function modulus;
  final String title;

  const FABModulus({
    Key key,
    this.modulus,
    this.title,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: modulus,
      backgroundColor: cPrimaryColor,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            )
            ),
        )
      )
    );
  }
}
