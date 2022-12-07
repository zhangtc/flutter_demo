import 'package:flutter/material.dart';
import '../res/listData.dart';
import '../routes.dart';

class PhotoViewPage extends StatefulWidget {
  const PhotoViewPage({super.key});

  @override
  State<PhotoViewPage> createState() => _PhotoViewPageState();
}

class _PhotoViewPageState extends State<PhotoViewPage> {
  List<String> listData = [];

  @override
  void initState() {
    super.initState();
    listData = images;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PhotoViewPage"),
      ),
      body: GridView.builder(
          itemCount: listData.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
          itemBuilder: (context, index) {
            String image = listData[index];
            print("image:$image");

            return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, photoViewGalleryPage, arguments: {
                    "initialPage": index,
                    "data":listData
                  });
                },
                child: Hero(
                  tag: image,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ));
          }),
    );
  }
}
