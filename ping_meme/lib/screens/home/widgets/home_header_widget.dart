import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidable/hidable.dart';
import 'package:ping_meme/core/routes/routes.dart';
import 'package:ping_meme/core/utils/theme/assets.gen.dart';
import 'package:ping_meme/core/utils/theme/colors.dart';
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
        child: Obx(() {
          return controller.isSearchBar.value ? onSearchBar(context) : onAppBar();
        }));
  }

  Widget onAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Get.toNamed(Routes.document);
          },
          child: WrapperIconSVG(
            icon: Assets.iconsIcFile,
          ),
        ),
        // onCancelSearchHeader() ,
        Text(
          "Feed",
          style: AppTypography.headerPrimary,
        ),
        // onSearchImageHeader(context) ,
        GestureDetector(
          child: WrapperIconSVG(
            icon: Assets.iconsIcResearch,
          ),
          onTap: () {
            controller.isSearchBar.value = true ; 
          },
        )
      ],
    );
  }

  Widget onSearchBar(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        onCancelSearchHeader() , 
        onSearchImageHeader(context) ,
        GestureDetector(
          child: WrapperIconSVG(
            icon: Assets.iconsIcResearch,
          ),
          onTap: () {
            print("Hello ?");
          },
        )
      ],
    );
  }

  Widget onSearchImageHeader(context) {
    return Container(
      width: MediaQuery.sizeOf(context).width - 160,
      padding: EdgeInsets.symmetric(vertical: 9),
      child: TextField(
        textAlign: TextAlign.start,
        // controller: ,
        onChanged: (str) {},
        style: AppTypography.bodyRegularLight,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
                borderSide: BorderSide(color: AppColors.primary))),
      ),
    );
  }

  Widget onCancelSearchHeader() {
    return GestureDetector(
        onTap: () {
          // Get.toNamed(Routes.close );]
          controller.isSearchBar.value = false ;  
        },
        child: Icon(Icons.close));
  }
}
