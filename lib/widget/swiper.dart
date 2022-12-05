import 'dart:async';

import 'package:flutter/material.dart';

class SwiperPage extends StatefulWidget {
  final double width;
  final double height;
  final List<String> list;

  const SwiperPage(
      {super.key,
      this.width = double.infinity,
      this.height = 200,
      required this.list});

  @override
  State<SwiperPage> createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  int _currentIndex = 0;
  List<Widget> listPage = [];
  late PageController _pageController;
  late Timer timer;

  @override
  void initState() {
    super.initState();

    for (String item in widget.list) {
      listPage.add(ImagesPage(imageUrl: item));
    }

    _pageController = PageController(initialPage: 0);
    //定时器
    timer = Timer.periodic(const Duration(seconds: 3), (t) {
      print("timer");
      _pageController.animateToPage((_currentIndex + 1) % listPage.length,
          duration: const Duration(milliseconds: 200), curve: Curves.linear);
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
    _pageController.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: widget.height,
          child: PageView.builder(
              controller: _pageController,
              itemCount: 1000,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index % listPage.length;
                });
              },
              itemBuilder: (context, index) {
                return listPage[_currentIndex];
              }),
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(listPage.length, (index) {
                return Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: _currentIndex == index ? Colors.red : Colors.grey,
                      shape: BoxShape.circle
                      // borderRadius: BorderRadius.circular(5)//圆
                      ),
                );
              }).toList(),
            ))
      ],
    );
  }
}

class ImagesPage extends StatefulWidget {
  final double width;

  final double height;

  final String imageUrl;

  const ImagesPage(
      {super.key,
      this.width = double.infinity,
      this.height = 200,
      required this.imageUrl});

  @override
  State<ImagesPage> createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Image.asset(
        widget.imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
