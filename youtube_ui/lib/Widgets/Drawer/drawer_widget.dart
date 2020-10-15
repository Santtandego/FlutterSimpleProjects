import 'package:flutter/material.dart';

import 'package:youtube_ui/Components/components.dart';
import 'package:youtube_ui/Components/c_colors.dart';
import 'package:youtube_ui/Widgets/Drawer/uniques.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: cColor,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 25),
            child: Column(
              children: [
                ListDrawerItem(icon: Icons.home, title: 'Home',),
                ListDrawerItem(icon: Icons.local_fire_department_sharp, title: 'Trending',),
                ListDrawerItem(icon: Icons.ondemand_video, title: 'Subscriptions',),
                CustomDivider(),
                ListTitleDrawer(title: 'Library',),
                ListDrawerItem(icon: Icons.history, title: 'History'),
                ListDrawerItem(icon: Icons.watch_later, title: 'Watch Later'),
                ListDrawerItem(icon: Icons.thumb_up, title: 'Liked Videos'),
                ListDrawerItem(icon: Icons.arrow_drop_down, title: 'Show More'),
                CustomDivider(),
                ListTitleDrawer(title: 'Subscriptions'),
                ListTitleDrawerImageAvatar(image: 'assets/images/avatar_2.jpg', title: 'Dan Lucky',),
                ListTitleDrawerImageAvatar(image: 'assets/images/avatar_1.jpg', title: 'Chiarra Abaess',),
                ListDrawerItem(icon: Icons.arrow_drop_down, title: 'Show 9 more'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



