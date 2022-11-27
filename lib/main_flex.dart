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

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 400,
          width: 400,
          color: Colors.red,
        ),
        const Text("Stack Text"),
        Container(
          height:300,
          width: 300,
          color: Colors.yellow,
        )
    
      ],
    );
  }
}
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
        body: const ContainerFlex2(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //占满整个屏幕
      height: double.infinity, //占满给整个屏幕
      color: Colors.black12,
      // child: Column (
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //横轴、主轴对齐模式
        crossAxisAlignment: CrossAxisAlignment.end, //次轴、纵轴对齐
        children: [
          const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text("Padding Text"),
              )),
          Expanded(
              flex: 2,
              child: IconContainer(Icons.category, color: Colors.grey)),
        ],
      ),
    );
  }
}

class ContainerFlex extends StatelessWidget {
  const ContainerFlex({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      // direction: Axis.vertical,
      direction: Axis.horizontal,
      children: [
        const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text("Padding Text"),
            )),
        Expanded(
            flex: 2, child: IconContainer(Icons.category, color: Colors.grey)),
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  Color color;
  IconData icon;

  IconContainer(this.icon, {super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: color,
      width: 64,
      height: 64,
      child: Icon(
        icon,
        color: Colors.amber[700],
        size: 32,
      ),
    );
  }
}

class ContainerFlex2 extends StatelessWidget {
  const ContainerFlex2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset("images/a.jpeg"),
        Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(flex: 3, child: Image.asset("images/a.jpeg")),
            Expanded(
              flex: 1,
              child: Flex(
                direction: Axis.vertical,
                children: [
                  IconContainer(Icons.category, color: Colors.grey),
                  IconContainer(Icons.home, color: Colors.grey),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
