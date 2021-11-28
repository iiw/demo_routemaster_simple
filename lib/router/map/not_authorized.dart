import 'package:demo_routemaster_simple/page/feed.dart';
import 'package:demo_routemaster_simple/page/home.dart';
import 'package:demo_routemaster_simple/page/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

RouteMap routesUnathorized(Function onSignedIn) => RouteMap(
      onUnknownRoute: (_) => Redirect('/sign-in'),
      routes: {
        '/': (_) => CupertinoTabPage(
              child: HomePage(),
              paths: const ['feed', 'settings'],
            ),
        '/feed': (_) => MaterialPage(child: FeedPage()),
        '/settings': (_) => Redirect('/sign-in'),
        '/sign-in': (_) => MaterialPage(child: SignInPage(onSignedIn)),
      },
    );
