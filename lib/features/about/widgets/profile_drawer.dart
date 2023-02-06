import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../models/user_model.dart';
import '../../authenticate/services/auth.dart';
import '../../elections/screens/user_elections.dart';
import '../../home/screens/home_screen.dart';
import '../screens/about_screen.dart';
import '../screens/faq_screen.dart';

class ProfileDrawer extends StatelessWidget {
  ProfileDrawer({super.key});

  final AuthService _auth = AuthService();

  void navigateToHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  void navigateToMyElections(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const UserElections(),
      ),
    );
  }

  void navigateToAbout(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AboutScreen(),
      ),
    );
  }

  void navigateToFaq(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const FaqScreen(),
      ),
    );
  }

  void logOut(BuildContext context) async {
    await _auth.signOut(context);
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel?>(context);

    String? displayName = user!.displayName;
    String profileDisplayName = user.displayName[0];

    return SafeArea(
      child: Drawer(
        backgroundColor: Constants.backgroundColor1,
        child: ListView(
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
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.orangeAccent,
                      child: Center(
                        child: Text(
                          profileDisplayName,
                          style: const TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      displayName,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        letterSpacing: 0.6,
                      ),
                    ),
                    Text(
                      user.email,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white60,
                        letterSpacing: 0.6,
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, size: 30),
              title: const Text('Home'),
              onTap: () => navigateToHome(context),
            ),
            ListTile(
              leading: const Icon(Icons.all_inbox, size: 30),
              title: const Text('My Elections'),
              onTap: () => navigateToMyElections(context),
            ),
            ListTile(
              leading: const Icon(Icons.info_outline, size: 30),
              title: const Text('About'),
              onTap: () => navigateToAbout(context),
            ),
            ListTile(
              leading: const Icon(Icons.question_mark, size: 30),
              title: const Text('FAQ'),
              onTap: () => navigateToFaq(context),
            ),
            ListTile(
              leading: const Icon(Icons.logout, size: 30),
              title: const Text('Logout'),
              onTap: () => logOut(context),
            ),
          ],
        ),
      ),
    );
  }
}
