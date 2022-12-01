import 'package:flutter/material.dart';

class NewsPages extends StatefulWidget {
  final String title;
  final Map arguments;
  NewsPages({super.key, this.title = "新闻", required this.arguments});

  @override
  State<NewsPages> createState() => _NewsPagesState();
}

class _NewsPagesState extends State<NewsPages> {

  @override
  void initState() {
    super.initState();
    print("aid:${widget.arguments['aid']}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pop(context);
      },child: const Icon(Icons.back_hand),),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(child: Text("新闻"),),
    );
  }
}
