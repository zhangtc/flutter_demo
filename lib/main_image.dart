import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Demo Images"),
      ),
      body: Column(children: const [
        MyBody(),
        CircularImage(),
        SizedBox(height: 10),
        ClipImage(),
        SizedBox(
          height: 10,
        ),
        LocalImage()
      ]),
    ),
  ));
}

const String imagesUrl1 =
    "https://play-lh.googleusercontent.com/DGJ2OhH8GD92VnBtOrfThkKflETS9xfTWMWrpq_nLED2CynN9nUtAbjIjQtwrBPmhEkL=w240-h480-rw";
const String imagesUrl2 =
    "https://play-lh.googleusercontent.com/5e7z5YCt7fplN4qndpYzpJjYmuzM2WSrfs35KxnEw-Ku1sClHRWHoIDSw3a3YS5WpGcI=w240-h480-rw";

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: const EdgeInsets.only(top: 50),
      height: 100,
      width: 300,
      decoration: const BoxDecoration(color: Colors.yellow),
      child: Image.network(
        imagesUrl1,
        // scale: 2, //缩小
        alignment: Alignment.topLeft,
        // fit: BoxFit.cover,
        repeat: ImageRepeat.repeatX, //平铺
      ),
    ));
  }
}

//实现圆形图片
class CircularImage extends StatelessWidget {
  const CircularImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(80),
          image: const DecorationImage(
              image: NetworkImage(imagesUrl1), fit: BoxFit.cover)),
    );
  }
}

//通过ClipOval实现圆形图片
class ClipImage extends StatelessWidget {
  const ClipImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: Image.network(
      imagesUrl1,
      width: 100,
      height: 100,
      fit: BoxFit.cover,
    ));
  }
}

//加载本地图片
class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(color: Colors.amber),
      child: Image.asset(
        "images/a.jpeg",
        fit: BoxFit.cover,
      ),
    );
  }
}
  