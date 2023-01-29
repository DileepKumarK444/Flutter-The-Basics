import 'package:flutter/material.dart';
import 'package:the_basics/locator.dart';

import '../../services/navigation_service.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, {super.key, required this.navigationPath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {locator<NavigatorService>().navigateTo(navigationPath)},
      child: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
