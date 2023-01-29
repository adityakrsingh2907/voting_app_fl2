import 'package:flutter/material.dart';

import '../../constants.dart';

import '../../screens/new_vote.dart';
import '../../screens/user_elections.dart';

import '../../widgets/action_box.dart';
import '../../widgets/profile_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _electionAccessCodeController = TextEditingController();

  void navigateToNewElection(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const NewVote(),
      ),
    );
  }

  void navigateToUserElections(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const UserElections(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.appBarColor,
        title: const Text('ElectChain'),
        actions: [],
      ),
      drawer: ProfileDrawer(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SizedBox(height: 30.0),
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
                        controller: _electionAccessCodeController,
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => navigateToNewElection(context),
                    child: const ActionBox(
                      action: "Create Election",
                      description: "Create a new vote",
                      image: Icons.how_to_vote,
                    ),
                  ),
                  const ActionBox(
                    action: "Poll",
                    description: "Create a new poll",
                    image: Icons.poll,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () => navigateToUserElections(context),
                    child: const ActionBox(
                      action: "My Elections",
                      description: "Create a new vote",
                      image: Icons.ballot,
                    ),
                  ),
                  const ActionBox(
                    action: "FAQ",
                    description: "Create a new poll",
                    image: Icons.description,
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
