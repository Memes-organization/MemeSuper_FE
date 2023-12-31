import 'package:flutter/material.dart';
import 'package:ping_meme/screens/test/startScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

// class EntryScreen extends StatefulWidget {
//   const EntryScreen({super.key});

//   @override
//   State<StatefulWidget> createState() {
//     return _EntryScreen();
//   }
// }

// class _EntryScreen extends State<EntryScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: AppColors.background,
//         appBar: AppBar(
//           backgroundColor: AppColors.primary,
//           title: const Text(
//             AppStringConstant.titleName,
//             style: AppTypography.headerLight,
//           ),
//         ),
//         body: const IndicatorCustom());
//   }
// }
