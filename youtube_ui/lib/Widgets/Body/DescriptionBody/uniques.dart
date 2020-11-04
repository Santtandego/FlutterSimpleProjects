import 'package:flutter/material.dart';

import 'package:youtube_ui/Components/colors.dart';

class TitleDescriptionVideo extends StatelessWidget {
  const TitleDescriptionVideo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Dangerous old castle exploring! Unknown \ncar followed us out',
        style: TextStyle(
          color: eColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        )
      )
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 934,
      height: 1,
      decoration: BoxDecoration(
        color: bColor.withOpacity(0.7)
      ),
    );
  }
}
