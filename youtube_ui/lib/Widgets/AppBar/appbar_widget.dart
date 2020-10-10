import 'package:flutter/material.dart';

import 'package:youtube_ui/Widgets/Body/body.dart';
import 'package:youtube_ui/Widgets/Drawer/drawer_widget.dart';



class AppBarWidget extends StatelessWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;

  const AppBarWidget({
    Key key,
    this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0.0,
        elevation: 0.0,
      ),
      drawer: DrawerWidget(),
      body: Body(),
    );
  }
}

