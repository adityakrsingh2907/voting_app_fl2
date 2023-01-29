import 'package:flutter/material.dart';
import 'package:voting_app/constants.dart';
import 'package:voting_app/widgets/profile_drawer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.appBarColor,
        title: const Text('About ElectChain'),
      ),
      drawer: ProfileDrawer(),
    );
  }
}
