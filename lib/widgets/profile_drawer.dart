import 'package:flutter/material.dart';

import '../constants.dart';
import '../services/auth.dart';

class ProfileDrawer extends StatelessWidget {
  ProfileDrawer({super.key});

  final AuthService _auth = AuthService();

  void navigateToHome() {}

  void navigateToMyElections() {}

  void navigateToAbout() {}

  void logOut() async {
    await _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          children: [
            SizedBox(
              height: 215,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Constants.gradientColor2,
                      Constants.gradientColor1,
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CircleAvatar(
                      radius: 50,
                      child: Icon(Icons.person, size: 50),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'User Name',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'user@emailaddress.com',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white60,
                        letterSpacing: 0.9,
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, size: 30),
              title: const Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.all_inbox, size: 30),
              title: const Text('My Elections'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.info_outline, size: 30),
              title: const Text('About'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.question_mark, size: 30),
              title: const Text('FAQ'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout, size: 30),
              title: const Text('Logout'),
              onTap: logOut,
            ),
          ],
        ),
      ),
    );
  }
}
