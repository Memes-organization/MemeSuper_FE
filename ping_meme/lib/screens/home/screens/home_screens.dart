import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ping_meme/core/routes/routes.dart';
import 'package:ping_meme/core/utils/theme/assets.gen.dart';
import 'package:ping_meme/core/utils/theme/colors.dart';
import 'package:ping_meme/core/utils/theme/styles.dart';
import 'package:ping_meme/core/utils/widgets/indicatorCustom.dart';
import 'package:ping_meme/core/utils/widgets/wrapper_icon_svg.dart';
import 'package:ping_meme/screens/home/home_controller.dart';
import 'package:ping_meme/screens/home/screens/home%20page/home_page.dart';
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
    _controller.initScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      resizeToAvoidBottomInset: false,
      body: PageView(
        controller: _controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          FeedPage(),
          // const MarketScreen(),f
          // const ProfileScreen(),
          Container(
            color: AppColors.backgroundWhite,
            child: Center(
              child: IndicatorCustom(),
            ),
          ),
          Container(
            color: AppColors.backgroundWhite,
            child: Center(
              child: IndicatorCustom(),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: floatingActionButton(),

      bottomNavigationBar: BottomBar(controller: _controller),
      // bottomNavigationBar: BottomBar(
      //   controller: _controller,
      // )
    );
  }

  Widget floatingActionButton() {
    return Obx(() {
      return AnimatedSlide(
        duration: Duration(milliseconds: 200),
        offset: _controller.showBottomFloatingActionButton.value
            ? Offset.zero
            : Offset(0, 2),
        child: AnimatedOpacity(
            duration: Duration(milliseconds: 200),
            opacity: _controller.showBottomFloatingActionButton.value ? 1 : 0,
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 30),
              height: 76,
              width: 144,
              decoration: AppStyles.borderSideFloatingActionButton,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _controller.showBottomFloatingActionButton .value = false ; 
                       _controller.isSearchBar.value = true ; 
                    },
                    child: Container(
                        padding: EdgeInsets.all(5),
                        child: WrapperIconSVG(
                          icon: Assets.iconsIcResearch,
                        ),
                        decoration:
                            AppStyles.borderComponentFloatingActionButton),
                  ),
                  Expanded(child: Container()),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.document); 
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: WrapperIconSVG(
                        icon: Assets.iconsIcFile,
                      ),
                      decoration: AppStyles.borderComponentFloatingActionButton,
                    ),
                  )
                ],
              ),
            )),
      );
    });
  }
}
