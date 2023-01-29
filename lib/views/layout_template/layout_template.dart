import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/locator.dart';
import 'package:the_basics/routing/route_names.dart';

import '../../routing/router.dart';
import '../../services/navigation_service.dart';
import '../../widgets/centered_view/centered_view.dart';
import '../../widgets/nav_drawer/navigation_drawer.dart';
import '../../widgets/navigation_bar/navigation_bar.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [
              NavBar(),
              Expanded(
                  child: Navigator(
                key: locator<NavigatorService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
