import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ping_meme/core/utils/string_utils.dart';
import 'package:ping_meme/screens/home/widgets/bottom_bar_widget.dart';

class HomeController extends GetxController {
  final PageController pageController = PageController(initialPage: 0);

  late Rx<TabController> tabController;
  final Rx<double> heighNavigator = 60.0.obs;
  late Rx<ScrollController> scrollController;
  RxBool showBottomBar = true.obs;

  final tabIndex = 0.obs;

  // initTabController()
  // {

  // }



  void onSrollOverNestedListTrue() {
    showBottomBar.value = true;
  }

  void onSrollOverNestedListFalse() {
    showBottomBar.value = false;
  }

  void onChangeNavigatorBar({bool? isShow}) {
    if (isShow == null) showBottomBar.value = !showBottomBar.value;

  }

  void initTabController(TickerProvider provider) {
    tabController = Rx(
      TabController(
          length: getTabBarLength(), vsync: provider, initialIndex: 0),
    );
  }

  void initScrollController() {
    scrollController.value = ScrollController();
  }

  List<Widget> tabViewHome() {
    return ListComponentTabConstant.listQuickFilterHome.map((e) {
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
