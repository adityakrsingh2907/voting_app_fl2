import 'package:flutter/material.dart';
import 'package:voting_app/constants.dart';
import 'package:voting_app/widgets/profile_drawer.dart';

class UserElections extends StatelessWidget {
  const UserElections({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.appBarColor,
      ),
      drawer: ProfileDrawer(),
    );
  }
}
