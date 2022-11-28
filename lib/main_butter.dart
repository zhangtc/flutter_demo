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
    return const ContainerButter();
  }
}

class ContainerButter extends StatelessWidget {
  const ContainerButter({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                print(" ---> ElevatedButton ");
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue), //背景色
                foregroundColor:
                    MaterialStatePropertyAll(Colors.white), //文字图标颜色
              ),
              child: const Text(
                "EButton",
              ),
            ),
            TextButton(
                onPressed: () {
                  print(" ---> TextButton ");
                },
                child: const Text("TButton")),
            OutlinedButton(
                onPressed: () {
                  print(" ---> OutlinedButton ");
                },
                child: const Text("OButton")),
            IconButton(
              onPressed: () {
                print(" ---> IconButton ");
              },
              color: Colors.blue,
              icon: const Icon(Icons.thumb_up),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  print("ElevatedButton.icon");
                },
                icon: const Icon(
                  Icons.send,
                  color: Colors.white,
                ),
                label: const Text(
                  "发送",
                  style: TextStyle(color: Colors.white),
                )),
            TextButton.icon(
                onPressed: () {
                  print("TextButton.icon");
                },
                icon: const Icon(Icons.info),
                label: const Text("消息")),
            OutlinedButton.icon(
                onPressed: () {
                  print("OutlinedButton.icon");
                },
                style: const ButtonStyle(
                    side: MaterialStatePropertyAll(
                        BorderSide(width: 2, color: Colors.amber))), //修改边框颜色
                icon: const Icon(Icons.add),
                label: const Text("添加"))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          //设置按钮的大小
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: ElevatedButton.icon(
                onPressed: () {
                  print(" ---> ElevatedButton.icon222");
                },
                icon: const Icon(
                  Icons.send,
                  color: Colors.white,
                ),
                label: const Text(
                  "发送",
                  style: TextStyle(color: Colors.white),
                ),
                style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(CircleBorder(
                            side:
                                BorderSide(color: Colors.blue, width: 2)) //圆形按钮
                        )),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  height: 42,
                  child: ElevatedButton.icon(
                      onPressed: () {
                        print(" --> 登录 ");
                      },
                      style: ButtonStyle(
                          foregroundColor:
                              const MaterialStatePropertyAll(Colors.white),
                          shape:
                              MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20), //设置圆角
                          ))),
                      icon: const Icon(Icons.login),
                      label: const Text("登录")),
                ))
          ],
        )
      ],
    );
  }
}
