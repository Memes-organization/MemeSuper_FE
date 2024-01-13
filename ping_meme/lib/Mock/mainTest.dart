import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:ping_meme/Mock/controller.dart';
import 'package:ping_meme/Mock/injection.dart';
import 'package:ping_meme/Mock/secondScreen.dart';
import 'package:ping_meme/theme/typograhpy.dart';

void main() async {
  await Future.wait([
    configDependencies(),
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final controller = getIt.get<MainController>();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Ping Meme',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: false,
        ),
        home: Scaffold(
          body: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
                    Obx(
                      () => Text("Counter: ${controller.counter}",
                          style: AppTypography.bodyBold),
                    ),
                    SizedBox(
                      height: 300,
                    ),
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
                    ElevatedButton(
                        onPressed: () {
                          Get.to(Screen2word());
                        },
                        child: Text(
                          "Second screen",
                          style: AppTypography.bodyBold,
                        )),
                  ],
                ),
              ),
            ],
          )),
        ));
  }
}
