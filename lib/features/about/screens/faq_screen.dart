import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../shared/widgets/logo_widget.dart';

class FaqScreen extends StatelessWidget {
  static const routeName = '/faq';

  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor1,
      appBar: AppBar(
        backgroundColor: Constants.appBarColor,
        title: const Text('FAQ'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 75),
          const Center(
            child: Logo(
              angle: 150,
              width: 150,
              height: 150,
              logoPath: Constants.electChainLogo1,
            ),
          ),
          const SizedBox(height: 75),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.centerLeft,
            child: Column(
              children: const [
                Text(
                  '1. How to use ElectChain',
                  style: TextStyle(
                    color: Constants.textColor2,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 0.7,
                  ),
                ),
                Text(
                  Constants.faqString1,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '2. How to create an election',
                  style: TextStyle(
                    color: Constants.textColor2,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 0.7,
                  ),
                ),
                Text(
                  Constants.faqString2,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '3. How to cast my vote',
                  style: TextStyle(
                    color: Constants.textColor2,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 0.7,
                  ),
                ),
                Text(
                  Constants.faqString3,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
