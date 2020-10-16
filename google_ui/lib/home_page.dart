import 'package:flutter/material.dart';
import 'package:google_ui/Components/components.dart';

import 'Components/c_color.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgColor,
        elevation: 0.0,
        actions: actions(),
      ),
      body: ContentBody(),
    );
  }
}

