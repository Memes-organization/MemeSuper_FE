import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ping_meme/core/utils/theme/assets.gen.dart';
import 'package:ping_meme/core/utils/theme/typograhpy.dart';
import 'package:ping_meme/core/utils/widgets/wrapper_icon_svg.dart';
import 'package:ping_meme/screens/home/home_controller.dart';

class HomeHeader extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            controller.onSrollOverNestedListTrue();
          },
          child: WrapperIconSVG(
            icon: Assets.iconsIcFile,
          ),
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
