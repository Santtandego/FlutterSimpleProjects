import 'package:flutter/material.dart';
import 'package:youtube_ui/Widgets/AppBar/appbar_widget.dart';

import 'Components/c_colors.dart';
import 'Widgets/AppBar/uniques.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
  _scaffoldKey.currentState.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: aColor,
        toolbarHeight: 75,
        leading: LeadingButton(tap: _openDrawer,),
        leadingWidth: 100,
        actions: actions(),
      ),
      body: AppBarWidget(scaffoldKey: _scaffoldKey,),
    );
  }
}