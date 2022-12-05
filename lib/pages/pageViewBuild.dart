import 'package:flutter/material.dart';

class PageViewBuilderPage extends StatefulWidget {
  const PageViewBuilderPage({super.key});

  @override
  State<PageViewBuilderPage> createState() => _PageViewBuilderPageState();
}

class _PageViewBuilderPageState extends State<PageViewBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("PageViewBuildPage"),),
      body: PageView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Center(
          child: Text(
            "第$index屏",
            style: Theme.of(context).textTheme.headline1,
          ),
        );
      },
    ),
    );
  }
}
