import 'dart:async';

import 'package:flutter/material.dart';

import '../widgets/logo_widget.dart';
import './home_screen.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  void navigateToHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      navigateToHome(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onVerticalDragUpdate: (dragUpdateDetails) => navigateToHome(context),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color.fromARGB(255, 27, 207, 231),
                Color.fromARGB(153, 50, 107, 205),
              ],
            ),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Positioned(
                      top: 100,
                      left: 0,
                      right: 0,
                      child: Center(child: Logo()),
                    ),
                    SizedBox(height: 35),
                    Text(
                      'ElectChain',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'A Decentralized Voting App',
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
