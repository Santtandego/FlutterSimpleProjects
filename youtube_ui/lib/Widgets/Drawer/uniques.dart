import 'package:flutter/material.dart';

import 'package:youtube_ui/Components/c_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: dColor,
      thickness: 0.4,
    );
  }
}

