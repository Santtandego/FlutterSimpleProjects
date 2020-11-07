import 'package:flutter/material.dart';

import 'Widgets/appbar_widget.dart';
import 'Widgets/body_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      body: BodyWidget(),
    );
  }
}
