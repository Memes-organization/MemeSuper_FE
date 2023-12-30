import 'package:flutter/material.dart';
import 'package:ping_meme/theme/colors.dart';
import 'package:ping_meme/theme/typograhpy.dart';
import 'package:ping_meme/utils/string_utils.dart';

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
}
