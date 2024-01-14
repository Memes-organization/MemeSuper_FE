import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ping_meme/core/utils/theme/assets.gen.dart';
import 'package:ping_meme/core/utils/theme/colors.dart';
import 'package:ping_meme/screens/home/home_controller.dart';
import 'package:ping_meme/screens/home/widgets/bottom_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  final HomeController _controller = Get.put(HomeController());
  bool isPopScope = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: PageView(
          controller: _controller.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            // const FeedScreen(),
            // const MarketScreen(),
            // const ProfileScreen(),
            Container(
              color: Colors.white,
            ),
            Container(
              color: Colors.white,
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
       bottomNavigationBar: BottomBar(),);
  }
}

BottomNavigationBarItem _bottomNavigationBarItem({
  required SvgGenImage icon,
  required String title,
}) {
  return BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.only(bottom: 10.0.w),
      child: icon.svg(
        fit: BoxFit.scaleDown,
        width: 20.w,
        height: 20.w,
        colorFilter: ColorFilter.mode(
          AppColors.black,
          BlendMode.srcIn,
        ),
      ),
    ),
    activeIcon: Padding(
        padding: EdgeInsets.only(bottom: 10.0.w),
        child: icon.svg(
          fit: BoxFit.scaleDown,
          width: 20.w,
          height: 20.w,
          colorFilter: ColorFilter.mode(
            AppColors.primary,
            BlendMode.srcIn,
          ),
        )),
    label: title,
  );
}
