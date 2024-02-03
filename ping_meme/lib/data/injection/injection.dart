import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies({bool isUnitTest = false}) async {
  if (isUnitTest) {
    WidgetsFlutterBinding.ensureInitialized();
    getIt.reset();
  }
  final prefs = await SharedPreferences.getInstance();
}
