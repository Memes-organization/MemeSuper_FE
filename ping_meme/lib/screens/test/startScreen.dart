import 'package:flutter/material.dart';
import 'package:ping_meme/screens/test.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const MyHomePage(
                                title: "Ping Meme",
                              )));
                },
                icon: const Icon(Icons.home))
          ],
          backgroundColor: AppColors.primary,
          title: const Text(
            AppStringConstant.titleName,
            style: AppTypography.headerLight,
          ),
        ),
        body: SafeArea(
            child: Column(
          children: [
            const Expanded(
                child: Center(
              child: Text(
                "Photo Edittor",
                style: AppTypography.bodyBold,
              ),
            )),
            Expanded(
                child: Center(
                    child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: ElevatedButton(
                        style: AppStyles.buttonNormalStyle,
                        onPressed: () {},
                        child: const Text(
                          "Gallery",
                        )),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: ElevatedButton(
                        style: AppStyles.buttonNormalStyle,
                        onPressed: () {},
                        child: const Text(
                          "Camera",
                        )),
                  ),
                )
              ],
            ))),
          ],
        )));
  }
}
