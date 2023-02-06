import 'package:flutter/material.dart';

class ActionBox extends StatelessWidget {
  final IconData image;
  final String action;
  final String description;

  const ActionBox({
    super.key,
    required this.image,
    required this.action,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 160.0,
      width: 175.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        gradient: const LinearGradient(
          end: Alignment.bottomRight,
          tileMode: TileMode.clamp,
          colors: [Colors.indigo, Colors.blue],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            image,
            size: 60.0,
            color: Colors.white,
          ),
          Text(
            action,
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
