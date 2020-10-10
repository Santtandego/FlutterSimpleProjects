import 'package:flutter/material.dart';

import 'package:youtube_ui/Components/components.dart';
import 'package:youtube_ui/Widgets/Body/AppBarBody/uniques.dart';

class AppBarBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBarBodyRow(),
        SizedBox(height: 25),
        NavigationBarChannel(),
      ],
    );
  }
}

class AppBarBodyRow extends StatelessWidget {
  const AppBarBodyRow({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
  final size = MediaQuery.of(context).size;
    return Row(
      children: [
        circleAvatarW(image: 'assets/images/avatar_3.jpg', radius: 45),
        SizedBox(width: 10),
        RichText(
          text: TextSpan(
            children: [
              nameTitleBody('Marie Schlemmer'),
              nameContentTitleBody('22,558 Subscribers')
            ]
          ),
        ),
        SizedBox(width: size.width * 0.41,),
        ButtonSubscribers(),
      ],
    );
  }
}
