import 'package:flutter/material.dart';
import 'package:youtube_ui/Components/components.dart';

class ContentBody extends StatelessWidget {
  const ContentBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(text: nameTitleBody('The Future is Yours'),),
          SizedBox(height: 2),
          Row(
            children: [
              VideoImage(video: 'assets/images/lukas.jpg',),
              SizedBox(width: 15),
              VideoImage(video: 'assets/images/ibadah.jpg',),
              SizedBox(width: 15),
              VideoImage(video: 'assets/images/nhan.jpg',),
              SizedBox(width: 15),
              VideoImage(video: 'assets/images/vincent.jpg',),
              SizedBox(width: 15),
              VideoImage(video: 'assets/images/akyurt.jpg',),
            ],
          )
        ],
      ),
    );
  }
}