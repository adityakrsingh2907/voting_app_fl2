import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../shared/widgets/gradient_button_1.dart';
import '../../../shared/widgets/logo_widget.dart';

class CreateElection extends StatefulWidget {
  static const routeName = '/create-election';

  const CreateElection({super.key});

  @override
  State<CreateElection> createState() => _CreateElectionState();
}

class _CreateElectionState extends State<CreateElection> {
  final TextEditingController _electionNameController = TextEditingController();
  final TextEditingController _electionDescriptionController = TextEditingController();
  final TextEditingController _electionStartDateController = TextEditingController();
  final TextEditingController _electionEndDateController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor1,
      appBar: AppBar(
        title: const Text('Create Election'),
        backgroundColor: Constants.appBarColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Center(
                child: Logo(
              width: 300,
              height: 120,
              logoPath: Constants.electChainLogo2,
              angle: 0,
            )),
            const SizedBox(height: 35),
            const Text(
              'Create a new Election',
              style: TextStyle(
                fontSize: 32,
                color: Constants.textColor2,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.7,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TextField(
                      controller: _electionNameController,
                      decoration: textInputDecoration.copyWith(
                        hintText: 'Enter Election\'s Name',
                        prefixIcon: const Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      controller: _electionDescriptionController,
                      decoration: textInputDecoration.copyWith(
                        hintText: 'Enter Election\'s Description',
                        prefixIcon: const Icon(Icons.edit),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      controller: _electionStartDateController,
                      decoration: textInputDecoration.copyWith(
                        hintText: 'Enter Election\'s Start Date',
                        prefixIcon: const Icon(Icons.calendar_today),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      controller: _electionEndDateController,
                      decoration: textInputDecoration.copyWith(
                        hintText: 'Enter Election\'s End Date',
                        prefixIcon: const Icon(Icons.calendar_month),
                      ),
                    ),
                    const SizedBox(height: 15),
                    GradientButtonFb1(
                      text: 'Continue',
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
