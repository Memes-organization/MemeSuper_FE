/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class Assets {
  Assets._();

  /// File path: assets/icons/ic_file.svg
  static const SvgGenImage iconsIcFile =
      SvgGenImage('assets/icons/ic_file.svg');

  /// File path: assets/icons/ic_home.svg
  static const SvgGenImage iconsIcHome =
      SvgGenImage('assets/icons/ic_home.svg');

  /// File path: assets/icons/ic_market.svg
  static const SvgGenImage iconsIcMarket =
      SvgGenImage('assets/icons/ic_market.svg');

  /// File path: assets/icons/ic_profile.svg
  static const SvgGenImage iconsIcProfile =
      SvgGenImage('assets/icons/ic_profile.svg');

  /// File path: assets/icons/ic_research.svg
  static const SvgGenImage iconsIcResearch =
      SvgGenImage('assets/icons/ic_research.svg');

  /// File path: assets/images/OWS.ico
  static const String imagesOWS = 'assets/images/OWS.ico';

  /// File path: assets/images/mock/image_0.jpg
  static const AssetGenImage imagesMockImage0 =
      AssetGenImage('assets/images/mock/image_0.jpg');

  /// File path: assets/images/mock/image_1.jpg
  static const AssetGenImage imagesMockImage1 =
      AssetGenImage('assets/images/mock/image_1.jpg');

  /// File path: assets/images/mock/image_10.jpg
  static const AssetGenImage imagesMockImage10 =
      AssetGenImage('assets/images/mock/image_10.jpg');

  /// File path: assets/images/mock/image_11.jpg
  static const AssetGenImage imagesMockImage11 =
      AssetGenImage('assets/images/mock/image_11.jpg');

  /// File path: assets/images/mock/image_2.jpg
  static const AssetGenImage imagesMockImage2 =
      AssetGenImage('assets/images/mock/image_2.jpg');

  /// File path: assets/images/mock/image_3.jpg
  static const AssetGenImage imagesMockImage3 =
      AssetGenImage('assets/images/mock/image_3.jpg');

  /// File path: assets/images/mock/image_4.jpg
  static const AssetGenImage imagesMockImage4 =
      AssetGenImage('assets/images/mock/image_4.jpg');

  /// File path: assets/images/mock/image_5.jpg
  static const AssetGenImage imagesMockImage5 =
      AssetGenImage('assets/images/mock/image_5.jpg');

  /// File path: assets/images/mock/image_6.jpg
  static const AssetGenImage imagesMockImage6 =
      AssetGenImage('assets/images/mock/image_6.jpg');

  /// File path: assets/images/mock/image_7.jpg
  static const AssetGenImage imagesMockImage7 =
      AssetGenImage('assets/images/mock/image_7.jpg');

  /// File path: assets/images/mock/image_8.jpg
  static const AssetGenImage imagesMockImage8 =
      AssetGenImage('assets/images/mock/image_8.jpg');

  /// File path: assets/images/mock/image_9.jpg
  static const AssetGenImage imagesMockImage9 =
      AssetGenImage('assets/images/mock/image_9.jpg');

  /// List of all assets
  static List<dynamic> get values => [
        iconsIcFile,
        iconsIcHome,
        iconsIcMarket,
        iconsIcProfile,
        iconsIcResearch,
        imagesOWS,
        imagesMockImage0,
        imagesMockImage1,
        imagesMockImage10,
        imagesMockImage11,
        imagesMockImage2,
        imagesMockImage3,
        imagesMockImage4,
        imagesMockImage5,
        imagesMockImage6,
        imagesMockImage7,
        imagesMockImage8,
        imagesMockImage9
      ];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
