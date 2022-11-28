import 'package:flutter/material.dart';

const String imagesUrl1 =
    "https://play-lh.googleusercontent.com/DGJ2OhH8GD92VnBtOrfThkKflETS9xfTWMWrpq_nLED2CynN9nUtAbjIjQtwrBPmhEkL=w240-h480-rw";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Flutter Demo 自带图标组件",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContainerAspectRatio();
  }
}

//宽高比组件
class ContainerAspectRatio extends StatelessWidget {
  const ContainerAspectRatio({super.key});

  @override
  Widget build(BuildContext context) {
    Widget widget = AspectRatio(
      aspectRatio: 3 / 1,
      child: Container(
        color: Colors.orange,
      ),
    );

    Widget cardWidget = Card(
      elevation: 12, //阴影值的深度
      margin: const EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: const [
          ListTile(
            title: Text(
              "Card 1",
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text("subtitle"),
          ),
          Divider(),
          ListTile(
              title: Text(
            "phone:xxxxxxx",
            style: TextStyle(fontSize: 16),
          )),
          ListTile(
              title: Text(
            "address:xxxxxxx",
            style: TextStyle(fontSize: 16),
          )),
        ],
      ),
    );

    Widget imageCard = Card(
      elevation: 12,
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Image.asset("images/a.jpeg"),
          ListTile(
            leading: ClipOval(
              child: Image.network(
                imagesUrl1,
                fit: BoxFit.cover,
              ),
            ),
            title: const Text("Title"),
            subtitle: const Text("SubTitle"),
          )
        ],
      ),
    );

    Widget imageCard2 = Card(
      elevation: 12,
      // clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Image.asset("images/a.jpeg"),
          const ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                imagesUrl1,
              ),
            ),
            title: Text("Title"),
            subtitle: Text("SubTitle"),
          )
        ],
      ),
    );

    return ListView(
      children: [
        widget,
        cardWidget,
        imageCard,
        imageCard2,
      ],
    );
  }
}
