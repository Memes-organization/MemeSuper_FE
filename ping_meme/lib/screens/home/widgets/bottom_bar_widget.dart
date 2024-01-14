import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ping_meme/core/utils/theme/assets.gen.dart';
import 'package:ping_meme/core/utils/theme/colors.dart';
import 'package:ping_meme/core/utils/widgets/inverted_circular_noteched_rectangle.dart';
import 'package:ping_meme/screens/home/home_controller.dart';


class BottomBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: AppColors.background,
      shape: InvertedCircularNotchedRectangle(notchRadius: 38),
      child: SizedBox(
        height: 65,
        child: BottomNavigationBar(
          // currentIndex: controller.tabIndex.value,
          // onTap: controller.onTabChanged,
          type: BottomNavigationBarType.fixed,
          items: [
            _bottomNavigationBarItem(
                icon: Assets.iconsIcHome, title: 'home'),
            _bottomNavigationBarItem(
                icon: Assets.iconsIcMarket, title: 'Market'),
            _bottomNavigationBarItem(
                icon: Assets.iconsIcProfile, title: 'Profile'),
          ],
        ),
      ),
    ) ; 
  }

}

BottomNavigationBarItem _bottomNavigationBarItem({
  required SvgGenImage icon,
  required String title,
}) {
  return BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.only(bottom: 10.0),
      child: icon.svg(
        fit: BoxFit.scaleDown,
        width: 20.w,
        height: 20,
        colorFilter: ColorFilter.mode(
          AppColors.black,
          BlendMode.srcIn,
        ),
      ),
    ),
    activeIcon: Padding(
        padding: EdgeInsets.only(bottom: 10.0),
        child: icon.svg(
          fit: BoxFit.scaleDown,
          width: 20,
          height: 20,
          colorFilter: ColorFilter.mode(
            AppColors.primary,
            BlendMode.srcIn,
          ),
        )),
    label: title,
  );
}
