//代码块 importM
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(title: const Text("Flutter Demo")),
    body: const MyApp(),
  )));
}


//代码块 statelessW
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const Center(
      child: Text(
        "Flutter StatelessWidget",
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.red, fontSize: 50.0),
      ),
    ); 
  }


}