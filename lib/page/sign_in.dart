import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  Function _onSignedIn;

  SignInPage(this._onSignedIn);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('SignIn page'),
        ElevatedButton(
            onPressed: () {
              _onSignedIn();
            },
            child: Text("Sign In!"))
      ],
    )));
  }
}
