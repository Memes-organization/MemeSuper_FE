import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ping_meme/core/utils/theme/typograhpy.dart';
import 'package:ping_meme/core/utils/widgets/imageAssetsCustom.dart';
import 'package:ping_meme/screens/home/home_controller.dart';

class GridView_Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GridView_Page();
  }
}

class _GridView_Page extends State<GridView_Page> {
  ScrollController _scrollController = ScrollController();
  final _controller = Get.find<HomeController>();
  @override
  void initState() {

    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 400) {
        _controller.onScrollOverNestedListTrue();
      } else
        _controller.onScrollOverNestedListFalse();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        shrinkWrap: true,
        itemCount: 12,
        controller: _scrollController,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 200 / 325),
        itemBuilder: (context, index) {
          return elementPost(index);
        });
  }

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
}
