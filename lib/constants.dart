import 'package:flutter/material.dart';

class Constants {
  static const String electChainLogo = 'assets/images/Logo.png';
  static const Color appBarColor = Color.fromRGBO(29, 37, 83, 1);
  static const Color gradientColor1 = Color.fromRGBO(62, 81, 181, 1);
  static const Color gradientColor2 = Color.fromRGBO(85, 132, 214, 1);
  static const Color backgroundColor1 = Color.fromRGBO(198, 201, 132, 1);

  static const String defaultProfilePicUrl =
      'https://icon-library.com/images/default-profile-icon/default-profile-icon-24.jpg';
}

const textInputDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 2),
  ),
);
