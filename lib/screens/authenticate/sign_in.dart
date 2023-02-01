import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../services/auth.dart';
import '../../widgets/loading.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;

  const SignIn({super.key, required this.toggleView});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  String email = '';
  String password = '';
  String error = '';

  void signInWithEmailAndPassword(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      setState(() => isLoading = true);
      dynamic result = await _auth.signInWithEmailAndPassword(email, password);

      if (result == null) {
        setState(() => isLoading = false);
        setState(() => error = 'Could not sign in with those credentials');
      }
    }
  }

  void signInWithGoogle(BuildContext context) {
    _auth.signInWithGoogle(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        backgroundColor: Constants.appBarColor,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ElevatedButton.icon(
            onPressed: () => signInWithGoogle(context),
            icon: Image.asset(
              Constants.googlePath,
              width: 35,
            ),
            style: ElevatedButton.styleFrom(
              elevation: 5,
              backgroundColor: Constants.gradientColor1,
              minimumSize: const Size(double.infinity, 50),
              // shape: const StadiumBorder(),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            label: const Text(
              // style the text to look sexy
              'Continue with google',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
