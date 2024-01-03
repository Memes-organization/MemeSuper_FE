import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ping_meme/screens/list%20image%20local%20upload/listImageLocalUpload.dart';
import 'package:ping_meme/services/imageSevice/image_picker.dart';
import 'package:ping_meme/theme/colors.dart';
import 'package:ping_meme/theme/styles.dart';
import 'package:ping_meme/theme/typograhpy.dart';
import 'package:ping_meme/utils/string_utils.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  ImagePickerrCustomize picker = ImagePickerrCustomize();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
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
                child: Center(
                    child: Column(
              children: [
                Expanded(
                    child: Center(
                  child: Text(
                    "Get list here!",
                    style: AppTypography.bodyBold,
                  ),
                )),
                Container(
                  width: 300,
                  margin: const EdgeInsets.all(5),
                  child: ElevatedButton(
                      style: AppStyles.buttonNormalStyle,
                      onPressed: () {
                        picker.onPickImageFormGallery(context: context);
                      },
                      child: const Text(
                        "Gallery",
                      )),
                ),
                Container(
                  width: 300,
                  margin: const EdgeInsets.all(5),
                  child: ElevatedButton(
                      style: AppStyles.buttonNormalStyle,
                      onPressed: () {
                        picker.onPickImageFormCamera(
                            source: ImageSource.camera, context: context);
                      },
                      child: const Text(
                        "Camera",
                      )),
                ),
                Container(
                  width: 300,
                  margin: const EdgeInsets.all(5),
                  child: ElevatedButton(
                      style: AppStyles.buttonNormalStyle,
                      onPressed: () {
                        // showModalBottomSheet(
                        //     context: context,
                        //     builder: (_) {
                        //       final paths = picker.getListImagePath();
                        //       return ListView.builder(
                        //         itemBuilder: (_, index) {
                        //           return Container(
                        //             padding: EdgeInsets.all(12),
                        //             child: Image.file(File(paths[index])),
                        //           );
                        //         },
                        //         itemCount: paths.length,
                        //       );
                        //     });
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          final paths = picker.getListImagePath();
                          return ListImageUpload(
                            paths: paths,
                          );
                        }));
                        ;
                      },
                      child: const Text(
                        "List",
                      )),
                ),
              ],
            ))),
          ],
        )));
  }
}
