
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PhotoViewGalleryPage extends StatefulWidget {
  final Map arguments;
  const PhotoViewGalleryPage({super.key, required this.arguments});

  @override
  State<PhotoViewGalleryPage> createState() => _PhotoViewGalleryPageState();
}

class _PhotoViewGalleryPageState extends State<PhotoViewGalleryPage> {
  List<String> listData = [];
  int initialPage = 0;
  int num = 0;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    listData = widget.arguments["data"];
    initialPage = widget.arguments["initialPage"];
    num = listData.length;
    currentIndex = initialPage;
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: listData[initialPage],
        child: Scaffold(
          backgroundColor: Colors.black,
          body: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Stack(
                children: [
                  Center(
                    child: PhotoViewGallery.builder(
                      itemCount: num,
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                        print("indext:$index   -- images:${listData[index]}");
                      },
                      pageController: PageController(initialPage: initialPage),
                      builder: ((context, index) {
                        return PhotoViewGalleryPageOptions(
                            imageProvider: AssetImage(listData[index]));
                      }),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "${currentIndex + 1}/$num",
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          decoration: TextDecoration.none),
                    ),
                  )
                ],
              )),
        ));
  }
}
