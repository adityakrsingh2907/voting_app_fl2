import 'package:flutter/material.dart';

import '../../../constants.dart';

import '../../authenticate/services/auth.dart';

import '../../about/screens/faq_screen.dart';
import '../../elections/screens/create_election.dart';
import '../../elections/screens/user_elections.dart';

import '../widgets/action_box.dart';
import '../../about/widgets/profile_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AuthService _auth = AuthService();
  final TextEditingController _electionCodeController = TextEditingController();

  void navigateToNewElection(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const CreateElection(),
      ),
    );
  }

  void navigateToUserElections(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const UserElections(),
      ),
    );
  }

  void navigateToFaq(BuildContext context) {
    Navigator.of(context).push(
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
    return Scaffold(
      backgroundColor: Constants.backgroundColor1,
      appBar: AppBar(
        backgroundColor: Constants.appBarColor,
        title: const Text('ElectChain'),
        actions: [
          IconButton(
            onPressed: () => logOut(context),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      drawer: ProfileDrawer(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "ENTER A VOTE CODE",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.60,
                    height: 50.0,
                    margin: const EdgeInsets.only(top: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: Form(
                      key: GlobalKey<FormState>(),
                      child: TextFormField(
                        controller: _electionCodeController,
                        keyboardType: TextInputType.text,
                        style: const TextStyle(
                          fontSize: 22.0,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          hintText: "Enter the election code",
                          hintStyle: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                          prefixIcon: const Icon(
                            Icons.lock,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20.0, left: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.indigo, Colors.blue],
                      ),
                    ),
                    child: TextButton.icon(
                      onPressed: (() => {}),
                      //Database Code to be addded
                      icon: const Icon(
                        Icons.check_circle,
                        color: Colors.white,
                      ),
                      label: const Text(
                        "Validate",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          letterSpacing: 0.8,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => navigateToNewElection(context),
                    child: const ActionBox(
                      action: "Create Election",
                      description: "Create a new vote",
                      image: Icons.how_to_vote,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const ActionBox(
                      action: "Poll",
                      description: "Create a new poll",
                      image: Icons.poll,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => navigateToUserElections(context),
                    child: const ActionBox(
                      action: "My Elections",
                      description: "Create a new vote",
                      image: Icons.ballot,
                    ),
                  ),
                  InkWell(
                    onTap: () => navigateToFaq(context),
                    child: const ActionBox(
                      action: "FAQ",
                      description: "Create a new poll",
                      image: Icons.description,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
