
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:ping_meme/core/routes/routes.dart';
import 'package:ping_meme/screens/home/screens/homeScreens.dart';

abstract class AppPages {
  
  static final List<GetPage> pages = [
    // GetPage(
    //   name: Routes.root,
    //   page: () => const StartScreen(),
    //   // binding: OnBoardBinding(),
    // ),
    GetPage(
      name: Routes.root,
      page: () =>  HomeScreen(),
      // binding: OnBoardBinding(),
    ),
    // GetPage(
    //   name: Routes.home,
    //   page: () => const HomeScreen(),
    //   binding: HomeBinding(),
    // ),
  ];
}
