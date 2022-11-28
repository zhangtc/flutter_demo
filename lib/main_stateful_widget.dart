import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyStatefulWidget(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  int countNum = 0;
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$countNum",
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 100,
          ),
          SizedBox(
            width: 100,
            height: 42,
            child: ElevatedButton(
                onPressed: () {
                  ++countNum;
                  print(countNum);
                },
                child: const Text("增加")),
          ),
        ],
      ),
    );
  }
}

//有状态组件
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _countNum = 0;
  @override
  Widget build(BuildContext context) {
    print("_countNum:$_countNum");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Demo 有状态组件",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$_countNum",
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              width: 100,
              height: 42,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      ++_countNum;
                    });
                    print(_countNum);
                  },
                  child: const Text("增加")),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ++_countNum;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
