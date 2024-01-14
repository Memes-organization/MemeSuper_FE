import 'package:get/state_manager.dart';

class MainController extends GetxController {
  final counter = 0.obs;

  void increment() {
    counter.value++;
  }
  void reset() {
    counter.value = 0 ;  
  }
}
