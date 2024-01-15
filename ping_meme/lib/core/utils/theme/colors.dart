import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color.fromARGB(255, 5, 96, 58);


  static const backgroundWhite = Color(0xffFFFFFF);
  static const backgroundPrimary = Color.fromARGB(255, 30, 155, 82);
  static const background = Color(0xffFFFFFF) ; 
  static const textGrey = Color(0xFF757779);
  static const text = Color(0xff1F2024);
  static const textLight = Color.fromARGB(255, 249, 249, 249);
  static const textPrimary = Color.fromARGB(255, 127, 213, 150);
  static const textRed = Color(0xffDC362E);
  static const border = Color(0xffEFF3F8);
  static const black = Color.fromARGB(255, 0, 0, 0);




  static Color hexToColor(String hexColor) {
    hexColor = hexColor.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    int colorValue = int.parse(hexColor, radix: 16);
    return Color(colorValue);
  }
}
