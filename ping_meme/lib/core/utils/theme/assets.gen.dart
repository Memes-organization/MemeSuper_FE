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

  /// File path: .env
  static const String env = '.env';

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

  /// List of all assets
  static List<dynamic> get values => [
        env,
        iconsIcFile,
        iconsIcHome,
        iconsIcMarket,
        iconsIcProfile,
        iconsIcResearch,
        imagesOWS
      ];
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
