import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../about/widgets/profile_drawer.dart';

class UserElections extends StatelessWidget {
  static const routeName = '/user-elections';

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
