import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ping_meme/services/imageService/imge_cropter.dart';
import 'package:ping_meme/theme/colors.dart';
import 'package:ping_meme/theme/typograhpy.dart';
import 'package:ping_meme/utils/string_utils.dart';

class EditImage extends StatefulWidget {
  final String paths;
  EditImage({required this.paths});
  @override
  State<StatefulWidget> createState() {
    return _ListImageUpload();
  }
}

class _ListImageUpload extends State<EditImage> {
  String paths = '';
  bool isConvert = false  ;
  late Image imageCurrent ;  
  // ScrollController
  @override
  void initState() {
    paths = widget.paths;
 imageCurrent = Image.file(File(widget.paths)) ;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {

            },
            child: Container(
              margin: EdgeInsets.only(right: 13),
              child: Center(
              child: Text("Save") ,  
            ),)
          ) ,  
         ],
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
          AppStringConstant.editImage,
          style: AppTypography.headerLight,
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Center(
              child: imageCurrent ,
            ),
          ),
          Divider(
            color: AppColors.backgroundWhite,
            height: 0.3,
            thickness: 0.2,
          ),
          Container(
            height: 50,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buttonEditPhoto(
                      title: "Crop",
                      icon: Icons.crop_rotate,
                      functionOnPressed: () async {
                        final value = await Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => ImageCroper(
                                  pathImage: imageCurrent,
                                )));
                          setState(() {
                            imageCurrent = value ;  
                          });
                      }),
                  buttonEditPhoto(
                      title: "Insert",
                      icon: Icons.photo_filter,
                      functionOnPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => ImageCroper(
                                  pathImage: imageCurrent ,
                                )));
                      }),
                  buttonEditPhoto(
                      title: "Text",
                      icon: Icons.text_fields,
                      functionOnPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => ImageCroper(
                                  pathImage: imageCurrent,
                                )));
                      }),
                  buttonEditPhoto(
                      title: "Filter",
                      icon: Icons.image,
                      functionOnPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => ImageCroper(
                                  pathImage: imageCurrent,
                                )));
                      }),
                  buttonEditPhoto(
                      title: "More",
                      icon: Icons.more_horiz_outlined,
                      functionOnPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => ImageCroper(
                                  pathImage: imageCurrent,
                                )));
                      }),
                ]),
          )
        ],
      )),
    );
  }

  buttonEditPhoto(
      {required String title,
      required IconData icon,
      required functionOnPressed}) {
    return Container(
      padding: EdgeInsets.only(top: 8),
      alignment: Alignment.center,
      child: GestureDetector(
          onTap: functionOnPressed,
          // onTap: () {
          //   Navigator.of(context).push(MaterialPageRoute(
          //       builder: (_) => ImageCroper(
          //             pathImage: paths[0],
          //           )));
          // },
          child: Column(
            children: [
              Icon(
                icon,
                color: AppColors.backgroundWhite,
                size: 24,
              ),
              Text(
                title,
                style: AppTypography.bodyRegularLight,
              )
            ],
          )),
    );
  }
}
