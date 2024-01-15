import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ping_meme/core/utils/string_utils.dart';
import 'package:ping_meme/core/utils/theme/assets.gen.dart';
import 'package:ping_meme/core/utils/theme/colors.dart';
import 'package:ping_meme/core/utils/theme/typograhpy.dart';

import 'package:ping_meme/core/utils/widgets/wrapper_icon_svg.dart';
import 'package:ping_meme/screens/home/home_controller.dart';

class FeedPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FeedPage();
  }
}

class _FeedPage extends State<FeedPage> with TickerProviderStateMixin {
  final HomeController _controller = Get.find<HomeController>();
  @override
  void initState() {
    _controller.initTabController(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Constant.paddingHorizontal,
        ),
        child: Column(
          children: [
            Row(
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
            ),
            TabBar(
              isScrollable: true,
              indicatorWeight: 1,
              tabAlignment: TabAlignment.start,
              automaticIndicatorColorAdjustment: false,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border(
                      bottom:
                          BorderSide(width: 0.5, color: AppColors.primary))),
              labelStyle: AppTypography.bodyRegularLight,
              unselectedLabelColor: AppColors.black,
              controller: _controller.tabController.value,
              tabs: _controller.tabViewHome(),
            ),
          ],
        ),
      ),
    );
  }
}
