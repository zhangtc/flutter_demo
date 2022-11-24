import 'package:flutter/material.dart';
import './myIcon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Flutter Demo 自带图标组件",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(
          Icons.home,
          color: Colors.amber,
          size: 30,
        ),
        SizedBox(
          height: 10,
        ),
        Icon(
          Icons.search,
          color: Colors.blue,
          size: 30,
        ),
        SizedBox(
          height: 10,
        ),
        Icon(
          Icons.category,
          color: Colors.red,
          size: 30,
        ),
        SizedBox(
          height: 10,
        ),
        Icon(
          MyIcon.book,
          color: Colors.cyan,
          size: 30,
        ),
        SizedBox(
          height: 10,
        ),
        Icon(
          MyIcon.weiXin,
          color: Colors.cyan,
          size: 30,
        ),
        SizedBox(
          height: 10,
        ),
        Icon(
          MyIcon.gouWuCheMan,
          color: Colors.cyan,
          size: 30,
        ),
        SizedBox(
          height: 10,
        ),
        Icon(
          MyIcon.shuqian,
          color: Colors.amber,
          size: 30,
        ),
        SizedBox(
          height: 10,
        ),
        Icon(
          MyIcon.bianji,
          color: Colors.amber,
          size: 30,
        ),
        SizedBox(
          height: 10,
        ),
        Icon(
          MyIcon.fenlei,
          color: Colors.amber,
          size: 30,
        ),
      ],
    );
  }
}
