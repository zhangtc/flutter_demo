import 'dart:ui';

import 'package:flutter/material.dart';
import './myIcon.dart';

const String imagesUrl1 =
    "https://play-lh.googleusercontent.com/DGJ2OhH8GD92VnBtOrfThkKflETS9xfTWMWrpq_nLED2CynN9nUtAbjIjQtwrBPmhEkL=w240-h480-rw";
const String imagesUrl2 =
    "https://play-lh.googleusercontent.com/5e7z5YCt7fplN4qndpYzpJjYmuzM2WSrfs35KxnEw-Ku1sClHRWHoIDSw3a3YS5WpGcI=w240-h480-rw";

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
    return ListView(
      padding: const EdgeInsets.all(10),
      children: <Widget>[
        const ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.amber,
            ),
            title: Text("Flutter Title 1")),
        const Divider(),
        const ListTile(
            leading: Icon(
              Icons.assessment,
              color: Colors.amber,
            ),
            title: Text("Flutter Title 2")),
        const Divider(),
        ListTile(
          leading: Icon(
            Icons.favorite,
            color: Colors.amber[700],
          ),
          title: const Text("Flutter Title 2"),
          trailing: Icon(
            Icons.chevron_right,
            color: Colors.red.shade700,
          ),
        ),
        const Divider(),
        ListTile(
          leading: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: NetworkImage(imagesUrl1), fit: BoxFit.cover)),
          ),
          title: const Text("Flutter Title "),
          subtitle: const Text(
              "subtitle subtitle subtitle subtitle subtitle subtitle subtitle subtitle"),
          trailing: Icon(
            Icons.chevron_right,
            color: Colors.red.shade700,
          ),
        ),
        const Divider(),
        ListTile(
          leading: Image.network(imagesUrl2, fit: BoxFit.cover),
          title: const Text("Flutter Title "),
          subtitle: const Text(
              "subtitle subtitle subtitle subtitle subtitle subtitle subtitle subtitle"),
          trailing: Icon(
            Icons.chevron_right,
            color: Colors.red.shade700,
          ),
        ),
        const Divider(),
        ListTile(
          trailing: Image.network(imagesUrl1, fit: BoxFit.cover),
          title: const Text("Flutter Title "),
          subtitle: const Text(
              "subtitle subtitle subtitle subtitle subtitle subtitle subtitle subtitle"),
        ),
        const Divider(),
        Image.asset("images/a.jpeg"),
        Container(
          padding: const EdgeInsets.only(top: 10),
          height: 50,
          alignment: Alignment.center,
          child: const Text(
            "title",
          ),
        ),
        Image.asset("images/a.jpeg"),
        Image.asset("images/a.jpeg"),
        Image.network(
          imagesUrl1,
          fit: BoxFit.cover,
        ),
        Image.network(
          imagesUrl1,
          fit: BoxFit.cover,
        ),
        Image.network(
          imagesUrl1,
          fit: BoxFit.cover,
        ),
        Container(
          height: 180,
          margin: const EdgeInsets.only(top: 10, bottom: 50),
          decoration: const BoxDecoration(color: Colors.white),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Column(
                children: [
                  Image.network(
                    imagesUrl1,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                  const Text(
                    "title",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.amber),
                  )
                ],
              ),
              Image.network(
                imagesUrl2,
                fit: BoxFit.cover,
              ),
              Image.network(
                imagesUrl1,
                fit: BoxFit.cover,
              ),
              Image.network(
                imagesUrl2,
                fit: BoxFit.cover,
              ),
            ],
          ),
        )
      ],
    );
  }
}
