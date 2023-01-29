import 'package:flutter/material.dart';
import 'package:the_basics/widgets/nav_drawer/drawer_item.dart';
import 'package:the_basics/widgets/nav_drawer/navigation_drawer_header.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          NavDrawerHeader(),
          DrawerItem(title: 'Episodes', icon: Icons.videocam),
          DrawerItem(title: 'About', icon: Icons.help),
        ],
      ),
    );
    ;
  }
}
