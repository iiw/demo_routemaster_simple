import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tabState = CupertinoTabPage.of(context);

    return WillPopScope(
        // with nested navigation using tabs we can catch back button click
        // and navigate to first tab before closing app
        onWillPop: () async {
          var willPop = tabState.controller.index == 0;
          if (!willPop) {
            // navigate to first tab using its path
            Routemaster.of(context).replace("/feed");
          }
          return willPop;
        },
        child: CupertinoTabScaffold(
          controller: tabState.controller,
          tabBuilder: tabState.tabBuilder,
          tabBar: CupertinoTabBar(
            items: const [
              BottomNavigationBarItem(
                label: 'Feed',
                icon: Icon(CupertinoIcons.list_bullet),
              ),
              BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(CupertinoIcons.search),
              ),
            ],
          ),
        ));
  }
}
