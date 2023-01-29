import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:voting_app/constants.dart';

class NewVote extends StatelessWidget {
  const NewVote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Vote'),
        backgroundColor: Constants.appBarColor,
      ),
      body: Container(
        child: const Text('New Vote'),
      ),
    );
  }
}
