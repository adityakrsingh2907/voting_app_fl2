import 'package:flutter/material.dart';
import 'package:voting_app/constants.dart';

class ErrorScreen extends StatelessWidget {
  final String error;
  const ErrorScreen({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor1,
      body: SafeArea(
        child: Center(
          child: Text(
            error,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
