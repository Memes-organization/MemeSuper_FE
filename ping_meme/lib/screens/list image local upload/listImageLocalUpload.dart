import 'dart:io';

import 'package:flutter/material.dart';
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
  late ScrollController _scrollController;
  List<String> paths = [];
  @override
  void initState() {
    paths = widget.paths;
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
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
          child: Container(
        child: TabBar(
            // controller: tabController,
            tabs: paths.map((e) {
              return Container(
                width: MediaQuery.sizeOf(context).width,
                child: Image.file(File(e)),
              );
            }).toList()),
      )),
    );
  }
}

/*

  child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return Container(
              width: MediaQuery.sizeOf(context).width,
              padding: EdgeInsets.all(12),
              child: Image.file(File(paths[index])),
            );
          },
          itemCount: paths.length,
        ),

*/
