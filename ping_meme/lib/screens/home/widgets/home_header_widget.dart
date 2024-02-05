import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidable/hidable.dart';
import 'package:ping_meme/core/routes/routes.dart';
import 'package:ping_meme/core/utils/theme/assets.gen.dart';
import 'package:ping_meme/core/utils/theme/typograhpy.dart';
import 'package:ping_meme/core/utils/widgets/wrapper_icon_svg.dart';
import 'package:ping_meme/screens/home/home_controller.dart';

class HomeHeader extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Hidable(
      controller: controller.scrollController,
      enableOpacityAnimation: true,
      deltaFactor: 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              // controller.onChangeNavigatorBar();
              // controller.onSrollOverNestedListTrue() ;
              // controller.onScrollOverNestedListFalse();
              Get.toNamed(Routes.document) ; 
            },
            child: WrapperIconSVG(
              icon: Assets.iconsIcFile,
            ),
          ),
          Text(
            "Feed",
            style: AppTypography.headerPrimary,
          ),
          GestureDetector(
            child: WrapperIconSVG(
            icon: Assets.iconsIcResearch,
          ),
          onTap: () {
            controller.onScrollOverNestedListTrue();
          },
          )
        ],
      ),
    );
  }
}
