import 'dart:io';

import 'package:crop_image/crop_image.dart';
import 'package:flutter/material.dart';
import 'package:ping_meme/theme/colors.dart';
import 'package:ping_meme/theme/typograhpy.dart';

class ImageCroper extends StatefulWidget {
  final String pathImage;

  const ImageCroper({Key? key, required this.pathImage}) : super(key: key);

  @override
  State<ImageCroper> createState() => _ImageCroper();
}

class _ImageCroper extends State<ImageCroper> {
  final controllerCrop = CropController(
    aspectRatio: 1,
    defaultCrop: const Rect.fromLTRB(0.2, 0.1, 0.9, 0.9),
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controllerCrop.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(
          "Crop Image",
          style: AppTypography.headerLight,
        ),
      ),
      body: Center(
        child: CropImage(
          controller: controllerCrop,
          image: Image.file(File(widget.pathImage)),
          alwaysMove: true,
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.close, color: AppColors.backgroundWhite),
              onPressed: () {
                controllerCrop.rotation = CropRotation.up;
                controllerCrop.crop = const Rect.fromLTRB(0.1, 0.1, 0.9, 0.9);
                controllerCrop.aspectRatio = 1.0;
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.aspect_ratio,
                color: AppColors.backgroundWhite,
              ),
              onPressed: _aspectRatios,
            ),
            IconButton(
              icon: const Icon(Icons.rotate_90_degrees_ccw_outlined,
                  color: AppColors.backgroundWhite),
              onPressed: _rotateLeft,
            ),
            IconButton(
              icon: const Icon(Icons.rotate_90_degrees_cw_outlined,
                  color: AppColors.backgroundWhite),
              onPressed: _rotateRight,
            ),
            TextButton(
              onPressed: _finished,
              child: const Text('Done', style: AppTypography.bodyBoldLight,),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _aspectRatios() async {
    final value = await showDialog<double>(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: const Text('Select aspect ratio'),
          children: [
            // special case: no aspect ratio
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, -1.0),
              child: const Text('free'),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, 1.0),
              child: const Text('square'),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, 2.0),
              child: const Text('2:1'),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, 1 / 2),
              child: const Text('1:2'),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, 4.0 / 3.0),
              child: const Text('4:3'),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, 16.0 / 9.0),
              child: const Text('16:9'),
            ),
          ],
        );
      },
    );
    if (value != null) {
      controllerCrop.aspectRatio = value == -1 ? null : value;
      controllerCrop.crop = const Rect.fromLTRB(0.1, 0.1, 0.9, 0.9);
    }
  }

  Future<void> _rotateLeft() async => controllerCrop.rotateLeft();

  Future<void> _rotateRight() async => controllerCrop.rotateRight();

  Future<void> _finished() async {
    final image = await controllerCrop.croppedImage();
    // ignore: use_build_context_synchronously
    await showDialog<bool>(
      context: context,
      builder: (context) {
        return SimpleDialog(
          contentPadding: const EdgeInsets.all(6.0),
          titlePadding: const EdgeInsets.all(8.0),
          title: const Text('Cropped image'),
          children: [
           
            const SizedBox(height: 5),
            image,
            TextButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('OK', style: AppTypography.headerPrimary,),
            ),
          ],
        );
      },
    );
  }
}
