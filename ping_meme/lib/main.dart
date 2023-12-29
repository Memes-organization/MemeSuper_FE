import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
          useMaterial3: true,
        ),
        home: EntryScreen());
  }
}

class EntryScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EntryScreen();
  }
}

class _EntryScreen extends State<EntryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 217, 217),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 227, 217, 217) ,
        title: const Text("MemeSuper", style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w600),),
      ),
      body: const Center(
        child: SpinKitThreeBounce(
          color: Color.fromARGB(255, 21, 101, 167),
          size: 18.0,
        ),
      ),
    );
  }
}
