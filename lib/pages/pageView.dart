import 'package:flutter/material.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({super.key});

  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PageView"),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        children:  [
          Center(
            child: Text(
              "第一屏",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
           Center(
            child: Text(
              "第二屏",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
           Center(
            child: Text(
              "第三屏",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
           Center(
            child: Text(
              "第四屏",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ],
      ),
    );
  }
}
