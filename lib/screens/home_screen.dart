import 'package:flutter/material.dart';
import 'package:voting_app/constants.dart';
import 'package:voting_app/widgets/profile_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.appBarColor,
        title: const Text('ElectChain'),
        actions: [],
      ),
      drawer: ProfileDrawer(),
      body: const Center(
        child: Text('Yes'),
      ),
    );
  }
}
