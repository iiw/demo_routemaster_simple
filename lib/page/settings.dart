import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text('Settings page'),
      ElevatedButton(
          onPressed: () {
            Routemaster.of(context).push("sign-out");
          },
          child: Text("Go to sign out"))
    ])));
  }
}
