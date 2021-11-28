import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () => Routemaster.of(context).push('profile/1'),
            child: Text('Feed page'),
          ),
          ElevatedButton(
            onPressed: () => Routemaster.of(context).push('profile/1/details'),
            child: Text('evaluate deep link'),
          )
        ]),
      ),
    );
  }
}
