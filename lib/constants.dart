import 'package:flutter/material.dart';

class Constants {
  static const googlePath = 'assets/images/google.png';

  static const String electChainLogo1 = 'assets/images/Logo.png';
  static const String electChainLogo2 = 'assets/images/full_logo.png';

  static const Color appBarColor = Color.fromRGBO(29, 37, 83, 1);
  static const Color gradientColor1 = Color.fromRGBO(62, 81, 181, 1);
  static const Color gradientColor2 = Color.fromRGBO(85, 132, 214, 1);
  static const Color backgroundColor1 = Color.fromRGBO(197, 202, 233, 1);
  static const Color textColor1 = Color.fromARGB(255, 50, 47, 186);
  static const Color textColor2 = Color.fromARGB(255, 5, 0, 255);

  static const String defaultProfilePicUrl =
      'https://icon-library.com/images/default-profile-icon/default-profile-icon-24.jpg';

  static const String faqString1 =
      'ElectChain is an Internet voting app where you can run transparent and secure elections. To cast your vote in a given election, you need to have its unique access code';

  static const String faqString2 =
      "You can create and run many elections as a user. You need to be logged in and identified as a user in order to create and run elections. To create an election, get to the home page and click on <CREATE NEW ELECTION>, then the appropriate page will come up and you will be required to fill some informations about the elections and confirm the createion";

  static const String faqString3 =
      "To cast your vote, nou need to have first of all the election access code. Then paste it in the provided input box (Home screen) and click on validate. Wait few seconds and the page of vote cast will come up. Finally make your choice and confirm";
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
