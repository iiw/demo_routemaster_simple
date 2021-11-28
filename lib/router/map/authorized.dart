import 'package:demo_routemaster_simple/page/details.dart';
import 'package:demo_routemaster_simple/page/feed.dart';
import 'package:demo_routemaster_simple/page/home.dart';
import 'package:demo_routemaster_simple/page/profile.dart';
import 'package:demo_routemaster_simple/page/settings.dart';
import 'package:demo_routemaster_simple/page/sign_out.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

RouteMap routesAuthorized(Function onSignedOut) => RouteMap(
      onUnknownRoute: (_) => Redirect('/'),
      routes: {
        '/': (_) => CupertinoTabPage(
              child: HomePage(),
              paths: const ['feed', 'settings'],
            ),
        '/feed': (_) => MaterialPage(child: FeedPage()),
        '/feed/profile/:id': (_) => MaterialPage(child: ProfilePage()),
        '/feed/profile/:id/details': (_) => MaterialPage(child: DetailsPage()),
        '/settings': (_) => MaterialPage(child: SettingsPage()),
        '/settings/sign-out': (_) =>
            MaterialPage(child: SignOutPage(onSignedOut)),
      },
    );
