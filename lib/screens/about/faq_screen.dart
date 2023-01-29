import 'package:flutter/material.dart';
import 'package:voting_app/constants.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.appBarColor,
        title: const Text('FAQ'),
      ),
    );
  }
}
