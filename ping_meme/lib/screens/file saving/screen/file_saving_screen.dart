
import 'package:flutter/material.dart';

class DocumentScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
          return _DocumentScreen() ; 
  }

}

 
class _DocumentScreen extends State<DocumentScreen>{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("hello mickey?"),
        ),
        body: Center(child: Text("Hello"),),
      );

  }
}