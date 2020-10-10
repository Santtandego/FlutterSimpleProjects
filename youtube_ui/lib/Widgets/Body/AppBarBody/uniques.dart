import 'package:flutter/material.dart';

class ButtonSubscribers extends StatelessWidget {

  const ButtonSubscribers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            'Subscribed 564k'.toUpperCase(),
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            ),
        ),
      ),
    );
  }
}

class NavigationBarChannel extends StatelessWidget {
  const NavigationBarChannel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationBarChannelItems(title: 'Home',),
        NavigationBarChannelItems(title: 'Videos', width: 100,),
        NavigationBarChannelItems(title: 'Community', width: 150,),
        NavigationBarChannelItems(title: 'Channels', width: 130,),
        NavigationBarChannelItems(title: 'About', width: 100,),
      ],
    );
  }
}

class NavigationBarChannelItems extends StatefulWidget {

  final String title;
  final double width;

   const NavigationBarChannelItems({
    Key key,
    this.title,
    this.width,
  }) : super(key: key);

  @override
  _NavigationBarChannelItemsState createState() => _NavigationBarChannelItemsState();
}

class _NavigationBarChannelItemsState extends State<NavigationBarChannelItems> {

  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: InkWell(
        onTap: () {
          setState(() {
            selected = true;
          });
        },
        onDoubleTap: (){
          setState(() {
            selected = false;
          });
        }, 
        child: Container(
          width: widget.width ?? 80,
          height: 40,
          child: Column(
            children: [
              Text(
                widget.title.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  ),
                ),
              Divider(
                color: Colors.white,
                thickness: selected != false ? 3.5 : 0.0,
                ),
            ],
          ),
        ),
      ),
    );
  }
}