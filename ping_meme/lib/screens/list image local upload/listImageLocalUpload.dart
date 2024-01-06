import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ping_meme/screens/edit%20image/edit_image.dart';
import 'package:ping_meme/theme/colors.dart';
import 'package:ping_meme/theme/typograhpy.dart';
import 'package:ping_meme/utils/string_utils.dart';

class ListImageUpload extends StatefulWidget {
  final List<String> paths;
  ListImageUpload({required this.paths});
  @override
  State<StatefulWidget> createState() {
    return _ListImageUpload();
  }
}

class _ListImageUpload extends State<ListImageUpload> {
  List<String> paths = [];
  late CarouselController carouseController;
  // ScrollController
  int indexImage  =  0 ;
  @override
  void initState() {
    paths = widget.paths;
    carouseController = CarouselController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_sharp,
              size: 20,
            )),
        backgroundColor: AppColors.primary,
        title: const Text(
          AppStringConstant.titleName,
          style: AppTypography.headerLight,
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: CarouselSlider.builder(
              itemCount: paths.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                return Container(
                  width: MediaQuery.sizeOf(context).width,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.file(File(paths[itemIndex])),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            height: 30,
                            width: 30,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Constant.radiusCircle),
                              color: AppColors.black,
                            ),
                            child: Center(
                              child: Text(
                                "${itemIndex + 1}",
                                style: AppTypography.bodyBoldLight,
                              ),
                            )),
                      ),
                    ],
                  ),
                );
              },
              carouselController: carouseController,
              options: CarouselOptions(
                  // onScrolled: (index) {
                  //   indexx = index ?? 0;
                  //   print("Something is ${indexx}");
                  // },
                  onPageChanged: (indexx, reason) {
                    setState(() {
                      print("Something if one change: $indexImage");
                      this.indexImage = indexx;
                    });
                  },
                  height: MediaQuery.sizeOf(context).height -
                      300, // chưa đc scale tỉ lệ đàng hoàng
                  initialPage: 0,
                  viewportFraction: 1),
            ),
          ),
          Divider(
            color: AppColors.backgroundWhite,
            height: 0.3,
            thickness: 0.2,
          ),
          Container(
            height: 70,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: IconButton(
                      alignment: Alignment.centerRight,
                      onPressed: () {
                        // carouseController.jumpToPage(3);
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return EditImage(
                            paths: paths[indexImage],
                          );
                        }));
                      },
                      icon: Icon(
                        Icons.edit,
                        color: AppColors.backgroundWhite,
                        size: 24,
                      ),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      alignment: Alignment.centerRight,
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: AppColors.backgroundWhite,
                        size: 24,
                      ),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      alignment: Alignment.centerRight,
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete,
                        color: AppColors.backgroundWhite,
                        size: 24,
                      ),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      alignment: Alignment.centerRight,
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz_outlined,
                        color: AppColors.backgroundWhite,
                        size: 24,
                      ),
                    ),
                  ),
                ]),
          )
        ],
      )),
    );
  }
}
