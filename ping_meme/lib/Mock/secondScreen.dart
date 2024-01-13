import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:ping_meme/Mock/controller.dart';
import 'package:ping_meme/Mock/injection.dart';
import 'package:ping_meme/theme/typograhpy.dart';

class Screen2word extends StatelessWidget {

  final controller = getIt.get<MainController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(
              "Counter: ${controller.counter.value}",
              style: AppTypography.bodyBold,
            )),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  controller.increment();
                },
                child: Text(
                  "Up",
                  style: AppTypography.bodyBold,
                )),
            ElevatedButton(
                onPressed: () {
                  controller.reset();
                },
                child: Text(
                  "Reset",
                  style: AppTypography.bodyBold,
                )),
          ],
        ),
      ),
    );
  }
}
