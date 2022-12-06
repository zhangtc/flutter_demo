import 'dart:async';

import 'package:flutter/material.dart';

class AnimatedListPage extends StatefulWidget {
  const AnimatedListPage({super.key});

  @override
  State<AnimatedListPage> createState() => _AnimatedListPageState();
}

class _AnimatedListPageState extends State<AnimatedListPage> {
  final globalKey = GlobalKey<AnimatedListState>();
  bool flag = true;
  List<String> list = ["第一条", "第二条"];

  Widget _buildItem(index) {
    return ListTile(
      title: Text(list[index]),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () => _deleteItem(index),
      ),
    );
  }

  _deleteItem(index) {
    print("index: $index");
    if (flag) {
      flag = false;
      globalKey.currentState!.removeItem(index, (context, animation) {
        var removeItem = _buildItem(index);
        list.removeAt(index);
        return FadeTransition(
          opacity: animation,
          child: removeItem,
        );
      });

      //延时设计
      Timer.periodic(const Duration(milliseconds: 300), (timer) {
        flag = true;
        timer.cancel();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AnimatedListPage")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          list.add("第三条");
          globalKey.currentState!.insertItem(list.length - 1);
        },
        child: const Icon(Icons.add),
      ),
      body: AnimatedList(
        key: globalKey,
        initialItemCount: list.length,
        itemBuilder: ((context, index, animation) {
          return FadeTransition(
            opacity: animation,
            child: _buildItem(index),
          );
        }),
      ),
    );
  }
}
