import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:ping_meme/core/utils/theme/colors.dart';

class CustomImage extends StatelessWidget {
  final String url;
  final String name;
  final double size;
  final double radius;
  final double fontSize;
  final BoxFit fit;
  const CustomImage(
      {super.key,
      required this.url,
      this.name = '',
      required this.size,
      this.radius = 0,
      this.fontSize = 16,
      this.fit = BoxFit.cover});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: CachedNetworkImage(
        imageUrl: url,
        width: size,
        height: size,
        fit: fit,
        errorWidget: (context, error, stackTrace) {
          return name.isEmpty
              ? Image.asset(
                  'assets/images/product_2.png',
                  width: size,
                  height: size,
                )
              : Container(
                  width: size,
                  height: size,
                  color: AppColors.primary.withOpacity(0.1),
                  child: Center(
                    child: Text(
                        name.trim().isEmpty
                            ? ''
                            : (name.trim().split(' ').first[0] +
                                name.trim().split(' ').last[0]),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSize,
                            fontWeight: FontWeight.w600)),
                  ));
        },
      ),
    );
  }
}

class CustomImage2 extends StatelessWidget {
  final String url;
  final String name;
  final double height;
  final double? width;
  final double radius;
  final double fontSize;
  final BoxFit fit;
  const CustomImage2(
      {super.key,
      required this.url,
      this.name = '',
      required this.height,
      this.width,
      this.radius = 0,
      this.fontSize = 16,
      this.fit = BoxFit.contain});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: CachedNetworkImage(
        imageUrl: url,
        width: width ?? height,
        height: height,
        fit: fit,
        errorWidget: (context, error, stackTrace) {
          return name.isEmpty
              ? Image.asset(
                  'assets/images/product_3.png',
                  width: height,
                  height: height,
                )
              : Container(
                  width: height,
                  height: height,
                  decoration: BoxDecoration(
                      color: Colors.redAccent.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text(
                        name.trim().isEmpty
                            ? ''
                            : (name.trim().split(' ').first[0] +
                                name.trim().split(' ').last[0]),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSize,
                            fontWeight: FontWeight.w600)),
                  ));
        },
      ),
    );
  }
}

class CustomImage3 extends StatelessWidget {
  final bool isEven;
  final String path;
  final String name;
  final double height;
  final double width;
  final aspectRatio  ; 
  final double radius;
  final double fontSize;
  final BoxFit fit;
  const CustomImage3(
      {super.key,
      required this.path,
      this.name = '',
      this.aspectRatio =  2.1/3 ,
      this.isEven  = false , 
      this.height =  230 , 
      this.width = 180,
      this.radius = 0,
      this.fontSize = 16,
      this.fit = BoxFit.cover});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Image.asset(
            path,
            width: width,
            fit: fit,
            height: height,
          )),
    );
  }
}
