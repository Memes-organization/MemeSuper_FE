import 'package:flutter/material.dart';
import 'package:ping_meme/core/utils/theme/colors.dart';
import 'package:ping_meme/core/utils/theme/typograhpy.dart';
import 'package:ping_meme/core/utils/string_utils.dart';

class AppStyles {
  static const borderRadius = BorderRadius.all(Radius.circular(3));
  static const inputStyle = InputDecoration(
    filled: true,
    fillColor: AppColors.backgroundPrimary,
    border: OutlineInputBorder(borderRadius: borderRadius),
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  );

  static const buttonNormalStyle = ButtonStyle(
      shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: borderRadius)),
      textStyle: MaterialStatePropertyAll(AppTypography.headerPrimary),
      backgroundColor: MaterialStatePropertyAll(AppColors.primary),
      padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
          vertical: Constant.paddingVertical,
          horizontal: Constant.paddingHorizontal)));

  static const borderSideFloatingActionButton = BoxDecoration(
      color: Color.fromARGB(255, 211, 210, 210),
      borderRadius: BorderRadius.all(Radius.circular(12)));
  static const borderComponentFloatingActionButton = BoxDecoration(
      color: Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.all(Radius.circular(12)));
}
