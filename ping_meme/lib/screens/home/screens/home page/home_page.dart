import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ping_meme/core/utils/string_utils.dart';

import 'package:ping_meme/core/utils/theme/colors.dart';
import 'package:ping_meme/core/utils/theme/typograhpy.dart';
import 'package:ping_meme/core/utils/widgets/imageAssetsCustom.dart';
import 'package:ping_meme/core/utils/widgets/indicatorCustom.dart';

import 'package:ping_meme/screens/home/home_controller.dart';
import 'package:ping_meme/screens/home/screens/home%20page/gridView_page.dart';
import 'package:ping_meme/screens/home/widgets/home_header_widget.dart';

class FeedPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FeedPage();
  }
}

class _FeedPage extends State<FeedPage> with TickerProviderStateMixin {
  final HomeController _controller = Get.find<HomeController>();
  final _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();

    _controller.initTabController(this);
     _scrollController.addListener(() {
     _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 400) {
        _controller.onSrollOverNestedListTrue();
      } else
        _controller.onSrollOverNestedListFalse();
    });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Constant.paddingHorizontal,
        ),
        child: NestedScrollView(
          floatHeaderSlivers: true,
          controller: _scrollController,
          headerSliverBuilder: (context, isScroll) {
            return [
              SliverToBoxAdapter(
                child: HomeHeader(),
              ),
            ];
          },
          body: Column(
            children: [
              TabBar(
                isScrollable: true,
                indicatorWeight: 1,
                padding: EdgeInsets.only(bottom: 10),
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
              Expanded(
                child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _controller.tabController.value,
                    children: [
                      tabViewAll_Mock(),
                      // GridView_Page(),
                      loadingdataTMP(),
                      loadingdataTMP(),
                      loadingdataTMP(),
                      loadingdataTMP(),
                      loadingdataTMP(),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }

  tabViewAll_Mock() {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: 12,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 200 / 325),
        itemBuilder: (context, index) {
          return elementPost(index);
        });
  }

//"assets/images/mock/image_01.jpg"
  elementPost(int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: CustomImage3(
            radius: 12,
            path: "assets/images/mock/image_$index.jpg",
          ),
        ),
        Text(
          "Image $index",
          style: AppTypography.bodyNormal,
        ),
        Text(
          "Miễn phí",
          style: AppTypography.bodyNormalBold,
        )
      ],
    );
  }
  /*

  */

  loadingdataTMP() {
    return Container(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IndicatorCustom(),
          Text(
            "Loading data",
            style: AppTypography.bodyRegularLight,
          )
        ],
      ),
    ));
  }
}
