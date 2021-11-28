import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import 'router/map/authorized.dart';
import 'router/map/not_authorized.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _authorized = false;

  bool get authorized {
    return _authorized;
  }

  void login() {
    setState(() {
      _authorized = true;
    });
  }

  void logout() {
    setState(() {
      _authorized = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      key: UniqueKey(),
      routerDelegate: RoutemasterDelegate(routesBuilder: (_) {
        if (authorized) {
          return routesAuthorized(logout);
        } else {
          return routesUnathorized(login);
        }
      }),
      routeInformationParser: const RoutemasterParser(),
    );
  }
}
