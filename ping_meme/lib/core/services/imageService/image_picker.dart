import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';

class ImagePickerrCustomize {


  ImagePickerrCustomize();
  List<XFile> pickedFileList = [];

  final ImagePicker picker = ImagePicker();

  Future<List<XFile>> onPickImageFormGallery({
    required BuildContext context,
  }) async {
    List<XFile> pickedFileListTmp = [];
    if (context.mounted) {
      pickedFileListTmp = await picker.pickMultipleMedia();
    }
    pickedFileList += pickedFileListTmp;
    return pickedFileListTmp;
  }

  List<String> getListImagePath() {
    List<String> paths = [];
    pickedFileList.forEach((e) {
      final String? mime = lookupMimeType(e.path);
      if (mime == null || mime.startsWith('image/')) {
        paths.add(e.path);
      }
    });
    return paths;
  }

  Future<XFile?> onPickImageFormCamera({
    required ImageSource source,
    required BuildContext context,
  }) async {
    XFile? pickedFileListTmp;
    if (context.mounted) {
      pickedFileListTmp = await picker.pickImage(
        source: source,
      );
    }
    if (pickedFileListTmp != null) {
      pickedFileList += <XFile>[pickedFileListTmp];
    }

    return pickedFileListTmp;
  }
}
