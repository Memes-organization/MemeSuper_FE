import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ping_meme/core/utils/string_utils.dart';

class HomeController extends GetxController {
  final PageController pageController = PageController(initialPage: 0);

  late Rx<TabController> tabController;

  final tabIndex = 0.obs;

  // initTabController()
  // {

  // }

  void initTabController(TickerProvider provider) {
    tabController = Rx(
      TabController(
          length: getTabBarLength(), vsync: provider, initialIndex: 0),
    );
  }

  List<Widget> tabViewHome() {
   return  ListComponentTabConstant.listQuickFilterHome.map((e) {
                return Tab(text: e["name"]);
              }).toList(); 
  }

  int getTabBarLength() => ListComponentTabConstant.listQuickFilterHome.length;

  onTabChanged(int newTabIndex) {
    tabIndex.value = newTabIndex;
    _moveToPage(newTabIndex);
  }

  void _moveToPage(int pageIndex) {
    pageController.jumpToPage(pageIndex);
  }
}
