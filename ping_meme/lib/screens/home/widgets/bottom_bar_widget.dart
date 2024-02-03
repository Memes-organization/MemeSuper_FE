import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hidable/hidable.dart';

import 'package:ping_meme/core/utils/theme/assets.gen.dart';
import 'package:ping_meme/core/utils/theme/colors.dart';

import 'package:ping_meme/screens/home/home_controller.dart';

class BottomBar extends StatelessWidget {
  final HomeController controller;
  const BottomBar({required this.controller});
  @override
  Widget build(BuildContext context) {
    // return Obx(() => AnimatedSlide(
    //       offset:
    //           controller.showBottomBar.value ? Offset.zero : const Offset(0, 2),
    //       duration:Duration(microseconds: 200 ),
    //       child: AnimatedOpacity(
    //         duration: Duration(microseconds: 200) ,
    //         opacity: controller.showBottomBar.value ? 1 : 0,
    //         child: _bottomNavigator(),
    //       ),
    //     ));
    // return  _bottomNavigator() ;
    return Hidable(
        controller: controller.scrollController,
        deltaFactor: 0.1,
        enableOpacityAnimation: true, // As default it's true
        preferredWidgetSize: Size.fromHeight(93),
        child: _bottomNavigator());
    // return null ;
  }

  _bottomNavigator() {
    return Container(
      decoration: BoxDecoration(
          // color: Colors.red,
          border: Border(
              top: BorderSide(color: AppColors.backgroundWhite, width: 0))),
      child: BottomAppBar(
        child: SizedBox(
          height: 60,
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            elevation: 0,
            currentIndex: controller.tabIndex.value,
            onTap: controller.onTabChanged,
            items: [
              _bottomNavigationBarItem(icon: Assets.iconsIcHome, title: 'Feed'),
              _bottomNavigationBarItem(
                  icon: Assets.iconsIcMarket, title: 'Market'),
              _bottomNavigationBarItem(
                  icon: Assets.iconsIcProfile, title: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}

BottomNavigationBarItem _bottomNavigationBarItem({
  required SvgGenImage icon,
  required String title,
}) {
  return BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.only(bottom: 2.0),
      child: icon.svg(
        fit: BoxFit.scaleDown,
        width: 25.w,
        height: 25.w,
        colorFilter: ColorFilter.mode(
          AppColors.black,
          BlendMode.srcIn,
        ),
      ),
    ),
    activeIcon: Padding(
        padding: EdgeInsets.only(bottom: 2.0),
        child: icon.svg(
          fit: BoxFit.scaleDown,
          width: 25.w,
          height: 25.w,
          colorFilter: ColorFilter.mode(
            AppColors.primary,
            BlendMode.srcIn,
          ),
        )),
    label: title,
  );
}
