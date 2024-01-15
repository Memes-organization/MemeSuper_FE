import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ping_meme/core/utils/theme/assets.gen.dart';
import 'package:ping_meme/core/utils/theme/colors.dart';
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
          ),
          Container(
            color: Colors.blue,
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(
        controller: _controller,
      ),
    );
  }
}
