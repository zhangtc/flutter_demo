import 'package:flutter/material.dart';

class PageViewFullPage extends StatefulWidget {
  const PageViewFullPage({super.key});

  @override
  State<PageViewFullPage> createState() => _PageViewFullPageState();
}

class _PageViewFullPageState extends State<PageViewFullPage> {
  List<Widget> list = [];

  @override
  void initState() {
    super.initState();

    for (var i = 0; i < 10; i++) {
      list.add(Center(
        child: Text(
          "第${i + 1}屏",
          style: const TextStyle(fontSize: 50),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PageViewFullPage"),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        onPageChanged: (index) {

          print(index);
          setState(() {
            if (index + 2 == list.length) {
              for (var i = 0; i < 10; i++) {
                list.add(Center(
                  child: Text(
                    "第${i + 1}屏",
                    style: const TextStyle(fontSize: 50),
                  ),
                ));
              }
            }
          });

        },
        children: list,
      ),
    );
  }
}
