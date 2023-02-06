import 'package:flutter/material.dart';

import './sign_in.dart';

class Authenticate extends StatefulWidget {
  static const routeName = '/auth';

  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;

  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SignIn(toggleView: toggleView);
  }
}
