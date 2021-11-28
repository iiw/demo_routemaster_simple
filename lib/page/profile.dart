import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Profile page'),
        ElevatedButton(
          onPressed: () => Routemaster.of(context).push("details"),
          child: Text("Open details"),
        ),
      ])),
    );
  }
}
