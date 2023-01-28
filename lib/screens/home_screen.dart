import 'package:flutter/material.dart';
import 'package:voting_app/constants.dart';
import 'package:voting_app/screens/newvote.dart';
import 'package:voting_app/screens/user_elections.dart';
import 'package:voting_app/widgets/action_box.dart';
import 'package:voting_app/widgets/profile_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _electionAccessCodeController = TextEditingController();
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
              Text(
                "ENTER A VOTE CODE",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo),
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
                          borderRadius: BorderRadius.circular(18.0)),
                      child: Form(
                        key: GlobalKey<FormState>(),
                        child: TextFormField(
                          controller: _electionAccessCodeController,
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            hintText: "Enter the election code",
                            hintStyle: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.normal),
                            prefixIcon: Icon(
                              Icons.lock,
                            ),
                          ),
                        ),
                      )),
                  Container(
                    margin: const EdgeInsets.only(top: 20.0, left: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.indigo, Colors.blue])),
                    child: TextButton.icon(
                        onPressed: (() => {}),
                        //Database Code to be addded
                        icon: Icon(
                          Icons.check_circle,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Validate",
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => NewVote())));
                    },
                    child: ActionBox(
                      action: "Create Election",
                      description: "Create a new vote",
                      image: Icons.how_to_vote,
                    ),
                  ),
                  ActionBox(
                      action: "Poll",
                      description: "Create a new poll",
                      image: Icons.poll),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>
                                UserElections()))), //Get.to(UserElections()),
                    child: ActionBox(
                      action: "My Elections",
                      description: "Create a new vote",
                      image: Icons.ballot,
                    ),
                  ),
                  ActionBox(
                      action: "FAQ",
                      description: "Create a new poll",
                      image: Icons.description),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

























//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Constants.appBarColor,
//         title: const Text('ElectChain'),
//         actions: [],
//       ),
//       drawer: ProfileDrawer(),
//       body: const Center(
//         child: Text('Yes'),
//       ),
//     );
//   }
// }
