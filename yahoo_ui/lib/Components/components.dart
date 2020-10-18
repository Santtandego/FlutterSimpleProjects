import 'package:flutter/material.dart';
import 'package:yahoo_ui/Components/uniques.dart';

class IconAppBar extends StatelessWidget {

  final IconData icon;

  const IconAppBar({
    Key key,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, top: 5),
      child: InkWell(
        onTap: () {},
        child: Icon(
          icon ?? Icons.menu,
          color: Colors.white,
        ),
      ),
    );
  }
}

class AppBarTextLeading extends StatelessWidget {

  final String title;
  final double offset;

  const AppBarTextLeading({
    Key key,
    this.title,
    this.offset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: offset ?? 40),
      child: InkWell(
        onTap: () {},
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}

class TextFieldBox extends StatelessWidget {
  const TextFieldBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 60,
      child: Column(
        children:[ 
          TextField(
            onChanged: (val) {},
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              hintText: 'Search...',
              hintStyle: TextStyle(
                fontSize: 20,
                color: Colors.white.withOpacity(0.6),
                fontWeight: FontWeight.normal,
              ),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              suffixIcon: Icon(
                Icons.search,
                color: Colors.white,
              )
            ),
          ),
          Container(
            width: double.infinity,
            height: 2,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
        ]
      ),
    );
  }
}

class BottomContent extends StatelessWidget {
  const BottomContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        IconAppBar(icon: Icons.mail),
        AppBarTextLeading(title: 'Mail', offset: 25,),
      ],
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
            children: [
              SizedBox(height: 45),
              AppBarWidget(),
              SizedBox(height: size.height * 0.3),
              LogoText(),
              SizedBox(height: size.height * 0.05),
              TextFieldBox(),
              SizedBox(height: size.height * 0.2),
              BottomContent(),
            ],
          ),
      ],
    );
  }
}

