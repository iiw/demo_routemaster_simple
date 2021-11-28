import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignOutPage extends StatelessWidget {
  Function _onSignedOut;

  SignOutPage(this._onSignedOut);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('SignOut page'),
        ElevatedButton(
            onPressed: () {
              _onSignedOut();
            },
            child: Text("Sign Out!"))
      ],
    )));
  }
}
