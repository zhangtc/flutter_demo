import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class HeroPage extends StatefulWidget {
  final Map arguments;
  const HeroPage({super.key, required this.arguments});

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: widget.arguments["url"],
        child: Scaffold(
          backgroundColor: Colors.black,
          body: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Center(
              child: PhotoView(
                imageProvider: AssetImage(widget.arguments["url"]),
              ),
            ),
          ),
        ));
  }
}
