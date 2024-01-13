import 'package:get_it/get_it.dart';
import 'package:ping_meme/Mock/controller.dart';

final getIt = GetIt.instance;

Future<void> configDependencies() async {
  getIt.registerLazySingleton<MainController>(() => MainController());
}
