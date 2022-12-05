import 'dart:async';

import 'package:flutter/material.dart';
import '../widget/swiper.dart';

class PageViewSwiper extends StatefulWidget {
  const PageViewSwiper({super.key});

  @override
  State<PageViewSwiper> createState() => _PageViewSwiperState();
}

class _PageViewSwiperState extends State<PageViewSwiper> {
  List<String> list = [];

  @override
  void initState() {
    super.initState();
    list = const [
      "images/a.jpeg",
      "images/a.jpeg",
      "images/a.jpeg",
    ];

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PageViewSwiper"),
      ),
      body: ListView(
        children: [
          SwiperPage(list: list)
        ],
      ),
    );
  }
}
