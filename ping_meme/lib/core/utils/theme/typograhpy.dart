import 'package:flutter/material.dart';
import 'package:ping_meme/core/utils/theme/colors.dart';

class AppTypography {
  static const headerPrimary = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const headerLight  = TextStyle(
      fontSize: 18, color: AppColors.textLight, fontWeight: FontWeight.w600);

  static const bodyRegular = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const bodyRegularLight = TextStyle(
      fontSize: 14, fontWeight: FontWeight.normal, color: AppColors.textLight);

  static const bodyBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static const bodyBoldLight = TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.textLight);
}
