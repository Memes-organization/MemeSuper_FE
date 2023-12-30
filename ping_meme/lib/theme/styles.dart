

import 'package:flutter/material.dart';
import 'package:ping_meme/theme/colors.dart';

class AppStyles {
  static const borderRadius = BorderRadius.all(Radius.circular(8));
  static const inputStyle = InputDecoration(
    filled: true,
    fillColor: AppColors.backgroundPrimary,
    border: OutlineInputBorder(borderRadius: borderRadius),
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  );
}
