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
    return const ContainerAlign();
  }
}

class ContainerStack extends StatelessWidget {
  const ContainerStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 400,
          height: 300,
          color: Colors.red,
        ),
        Container(
          width: 300,
          height: 200,
          color: Colors.amber,
        ),
        const Text("Stack Text")
      ],
    );
  }
}

class ContainerPositioned extends StatelessWidget {
  const ContainerPositioned({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.red,
      child: Stack(
        children: [
          Positioned(
              left: 10,
              bottom: 10,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.amber,
              )),
          const Positioned(right: 10, top: 190, child: Text("Positioned"))
        ],
      ),
    );
  }
}

class ContainerAlign extends StatelessWidget {
  const ContainerAlign({super.key});

  @override
  Widget build(BuildContext context) {
    Widget widget = Column(
      children: [
        Container(
          width: 200,
          height: 100,
          color: Colors.red,
          //child: center
          child: const Align(
            alignment: Alignment.center,
            child: Text("Align Text"),
          ),
        ),
        Container(
          width: 200,
          height: 100, 
          color: Colors.yellow,
          child: Stack(
          children: const [
            Align(
              alignment: Alignment.topLeft,
              child: Icon(Icons.home),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.category),
            )
          ],
        ),),
        Container(
          width: 200,
          height: 100, 
          color: Colors.amber,
          child: Stack(
          children: const [
            Positioned(
              left: 10,
              child: Icon(Icons.home),
            ),
            Positioned(
              right: 10,
              child: Icon(Icons.category),
            )
          ],
        ),)
        
      ],
    );

    return widget;
  }
}

class ContainerPositioned2 extends StatelessWidget {
  const ContainerPositioned2({super.key});

  @override
  Widget build(BuildContext context) {
//获取设备的宽度和高度
    final size = MediaQuery.of(context).size;

    Widget widget = Stack(
      children: [
        ListView(
          padding: const EdgeInsets.only(top: 50),
          children: const [
            ListTile(
              title: Text("ListView 0"),
            ),
            ListTile(
              title: Text("ListView 1"),
            ),
            ListTile(
              title: Text("ListView 1"),
            ),
            ListTile(
              title: Text("ListView 1"),
            ),
            ListTile(
              title: Text("ListView 1"),
            ),
            ListTile(
              title: Text("ListView 1"),
            ),
            ListTile(
              title: Text("ListView 1"),
            ),
            ListTile(
              title: Text("ListView 1"),
            ),
            ListTile(
              title: Text("ListView 1"),
            ),
            ListTile(
              title: Text("ListView 1"),
            ),
            ListTile(
              title: Text("ListView 1"),
            ),
          ],
        ),
        Positioned(
            left: 0,
            top: 0,
            width: size.width,
            height: 50,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      color: Colors.blue,
                      child: const Text(
                        "text",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ))
              ],
            ))
      ],
    );

    return widget;
  }
}
