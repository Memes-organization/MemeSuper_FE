import 'package:flutter/material.dart';
import 'package:ping_meme/screens/test/startScreen.dart';
import 'package:ping_meme/theme/colors.dart';
import 'package:ping_meme/theme/typograhpy.dart';
import 'package:ping_meme/utils/string_utils.dart';
import 'package:ping_meme/utils/widgets/indicatorCustom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ping Meme',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: false,
        ),
        home: const StartScreen());
  }
}

class EntryScreen extends StatefulWidget {
  const EntryScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _EntryScreen();
  }
}

class _EntryScreen extends State<EntryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          title: Text(
            AppStringConstant.titleName,
            style: AppTypography.headerLight,
          ),
        ),
        body: const IndicatorCustom());
  }
}
