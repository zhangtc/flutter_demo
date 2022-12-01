import 'package:flutter/material.dart';
import '../routes.dart';
import './tabs.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("搜索页面"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text("搜索页面"),
            ),
            ElevatedButton(
                onPressed: () {
                  //替换路由
                  Navigator.of(context).pushReplacementNamed(search);
                },
                child: const Text("Replacemen:$search")),
                ElevatedButton(
                onPressed: () {
                  //替换路由
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (BuildContext builder){
                      return const Tabs(index: 2,);
                    })
                    ,(route) => false
                  );
                },
                child: const Text("返回根页面"))
          ],
        ));
  }
}
