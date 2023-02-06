import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../features/authenticate/screens/authenticate.dart';
import '../../features/home/screens/home_screen.dart';
import '../../models/user_model.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel?>(context);

    if (user == null) {
      return const Authenticate();
    } else {
      return const HomeScreen();
    }
  }
}
