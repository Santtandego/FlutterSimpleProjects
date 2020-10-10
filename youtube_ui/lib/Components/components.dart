import 'package:flutter/material.dart';

import 'constants_values.dart';

class IconAppBar extends StatelessWidget {

  final IconData icon;
  final double offset;

  const IconAppBar({
    Key key,
    this.icon,
    this.offset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: offset ?? 15),
      child: InkWell(
        onTap: () {},
        child: iconAppBarwiget(icon),
      )
    );
  }
}

Widget iconAppBarwiget(IconData icon){
  return  Icon(
      icon,
      size: 40,
      color: bColor,
  );
}

class ImageAvatar extends StatelessWidget {

  final String image;
  final double radius;

  const ImageAvatar({
    Key key,
    this.image,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: circleAvatarW(
        image: image,
        radius: radius,
      )
    );
  }
}

Widget circleAvatarW({String image, double radius}){
  return InkWell(
        onTap: () {},
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage(image),
          radius: radius,
        ),
    );
}

class ListDrawerItem extends StatelessWidget {

  final IconData icon;
  final String title;

  const ListDrawerItem({
    Key key,
    this.icon,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, bottom: 25),
      child: InkWell(
        onTap: () {},
        child: Container(
          child: Row(
            children: [
              Icon(
                icon,
                color: eColor,
                size: 30,
              ),
              SizedBox(width: 20),
              Text(
                title,
                style: TextStyle(
                  color: dColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}

class ListTitleDrawer extends StatelessWidget {

  final String title;

  const ListTitleDrawer({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20, left: 30),
      child: Row(
        children: [
          Container(
            child: Text(
              title.toUpperCase(),
              style: TextStyle(
                color: eColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ListTitleDrawerImageAvatar extends StatelessWidget {

  final String image, title;

  const ListTitleDrawerImageAvatar({
    Key key,
    this.image,
    this.title,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, bottom: 25),
      child: InkWell(
        onTap: () {},
        child: Container(
          child: Row(
            children: [
              circleAvatarW(
                image: image,
              ),
              SizedBox(width: 20,),
              Text(
                title,
                style: TextStyle(
                  color: dColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

TextSpan nameTitleBody(String title){
  return TextSpan(
    text: '$title\n',
    style: TextStyle(
      color: eColor,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    )
  );
}

TextSpan nameContentTitleBody(String title){
  return TextSpan(
    text: '$title',
    style: TextStyle(
      color: eColor.withOpacity(0.5),
    )
  );
}

class VideoImage extends StatelessWidget {

  final String video;

  const VideoImage({
    Key key,
    this.video,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 175,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            image: AssetImage(video),
            fit: BoxFit.cover,
          )
        ),
        child: Center(
          child: Icon(
            Icons.play_arrow,
            size: 50,
            color: eColor,
          ),
        ),
      ),
    );
  }
}
