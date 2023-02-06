import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../shared/widgets/loading.dart';
import '../services/auth.dart';

class SignIn extends StatefulWidget {
  static const routeName = '/sign-in';

  final Function toggleView;

  const SignIn({super.key, required this.toggleView});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  bool isLoading = false;

  void signInWithGoogle(BuildContext context) {
    _auth.signInWithGoogle(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor1,
      appBar: AppBar(
        title: const Text('Sign In'),
        backgroundColor: Constants.appBarColor,
      ),
      body: isLoading
          ? const Loading()
          : Center(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton.icon(
                  onPressed: () => signInWithGoogle(context),
                  icon: Image.asset(
                    Constants.googlePath,
                    width: 35,
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Constants.gradientColor1,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  label: const Text(
                    'Continue with google',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.7,
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
