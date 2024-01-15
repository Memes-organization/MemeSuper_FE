import 'package:flutter/material.dart';
import 'package:ping_meme/core/utils/theme/assets.gen.dart';
import 'package:ping_meme/core/utils/theme/colors.dart';

class WrapperIconSVG extends StatelessWidget {
  WrapperIconSVG({colors, width, height, radius, onTapX, required this.icon});
  final SvgGenImage icon;
  final double height = 45;
  final double width = 45;
  final double radius = 12;
  final Color colors = AppColors.primary;
  dynamic onTapX;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapX,
      child: Container(
        height: this.height,
        width: this.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(this.radius),
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: 2.0),
          child: icon.svg(
            height: height,
            width: width,
            fit: BoxFit.scaleDown,
            colorFilter: ColorFilter.mode(
              AppColors.primary,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
