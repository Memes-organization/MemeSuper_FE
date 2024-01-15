import 'package:flutter/material.dart';
import 'package:ping_meme/core/utils/theme/assets.gen.dart';
import 'package:ping_meme/core/utils/theme/typograhpy.dart';
import 'package:ping_meme/core/utils/widgets/wrapper_icon_svg.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        WrapperIconSVG(
          icon: Assets.iconsIcFile,
        ),
        Text(
          "Feed",
          style: AppTypography.headerPrimary,
        ),
        WrapperIconSVG(
          icon: Assets.iconsIcResearch,
        )
      ],
    );
  }
}
