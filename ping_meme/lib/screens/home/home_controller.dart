import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ping_meme/core/utils/string_utils.dart';

class HomeController extends GetxController {
  final PageController pageController = PageController(initialPage: 0);

  late Rx<TabController> tabController;
  final Rx<double> heighNavigator = 60.0.obs;
  late  ScrollController scrollController ;  
  RxBool showBottomFloatingActionButton = true.obs;
  final tabIndex = 0.obs;
  final isSearchBar = false.obs ;   



  void onScrollOverNestedListTrue() {
    showBottomFloatingActionButton.value = true;
  }

  void onScrollOverNestedListFalse() {
    showBottomFloatingActionButton.value = false;
  }


  void initTabController(TickerProvider provider) {
    tabController = Rx(
      TabController(
          length: getTabBarLength(), vsync: provider, initialIndex: 0),
    );
  }

  void initScrollController() {
    scrollController = ScrollController();
     double oldOffset = 0.0 ;  
    scrollController.addListener(() {
        
       
        if(scrollController.offset > 100 ) 
        {
          if(scrollController.offset > oldOffset) 
          {
            onScrollOverNestedListTrue() ; 
          }else {
            onScrollOverNestedListFalse(); 
          }
        }
           oldOffset = scrollController.offset ; 
     });
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
