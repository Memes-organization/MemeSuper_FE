import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ping_meme/theme/colors.dart';

class IndicatorCustom extends StatelessWidget {
  const IndicatorCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SpinKitThreeBounce(
        color:AppColors.primary,
        size: 18.0,
      ),
    );
  }
}
