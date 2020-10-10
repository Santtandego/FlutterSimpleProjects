import 'package:flutter/material.dart';

import 'package:youtube_ui/Components/components.dart';
import 'package:youtube_ui/Widgets/Body/DescriptionBody/uniques.dart';

class DescriptionBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DescriptionBodyWidget(),
        SizedBox(height: 28),
        CustomDivider(),
      ],
    );
  }
}

class DescriptionBodyWidget extends StatelessWidget {
  const DescriptionBodyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          VideoImage(video: 'assets/images/castle.jpg',),
          SizedBox(width: 15),
          Column(//
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleDescriptionVideo(),
                SizedBox(height: 10),
                Row(
                    children: [
                      RichText(text: nameContentTitleBody('John William',)),
                      SizedBox(width: 20),
                      RichText(text: nameContentTitleBody('18k Views',)),
                      SizedBox(width: 20),
                      RichText(text: nameContentTitleBody('4 Weeks Ago',)),
                    ],
                ),     
              ],
            ),
        ],
      ),
    );
  }
}



