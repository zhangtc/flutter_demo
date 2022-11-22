import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(title: const Text("Flutter Demo")),
    body: const Center(
      child: Text(
        "Flutter",
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.red, fontSize: 50.0),
      ),
    ),
  )));
}

