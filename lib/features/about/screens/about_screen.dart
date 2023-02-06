import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../widgets/profile_drawer.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = '/about';

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
