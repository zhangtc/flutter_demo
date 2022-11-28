import 'package:flutter/material.dart';

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

  List<Widget> _initListData() {
    List<Widget> widget = [];
    String params = "wrap";

    for (var i = 0; i < 20; i++) {
      String params = "wrap($i)";
      widget.add(ContainerButter(
        params,
        onPressed: () {
          print(params);
        },
      ));
    }

    return widget;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,//对齐模式
        direction: Axis.horizontal ,//设置垂直模式（Axis.vertical）和水平模式
        spacing: 5, //水平间距
        runSpacing: 5, //垂直间距
        children: _initListData(),
      ),
    );
  }
}

class ContainerButter extends StatelessWidget {
  String title;
  void Function()? onPressed;
  ContainerButter(this.title, {super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: const ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(Color.fromARGB(255, 199, 197, 191)),
          foregroundColor:
              MaterialStatePropertyAll(Color.fromARGB(255, 79, 77, 77)),
        ),
        child: Text("$title"));
  }
}
