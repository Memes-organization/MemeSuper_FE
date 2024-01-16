import 'package:flutter/material.dart';
import 'package:ping_meme/core/utils/theme/colors.dart';

class AppTypography {
  static const headerPrimary = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.primary);

  static const header = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.black
  );

  static const headerLight = TextStyle(
      fontSize: 18, color: AppColors.textLight, fontWeight: FontWeight.w600);

  static const bodyRegular = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.black
  );

  static const bodyNormal = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textGrey
  );
  static const bodyNormalBold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.black
  );

  static const bodyRegularLight = TextStyle(
      fontSize: 14, fontWeight: FontWeight.normal, color: AppColors.primary);

  static const bodyBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static const bodyBoldLight = TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.textLight);
}
