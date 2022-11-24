import 'package:flutter/material.dart';
import 'res/listData.dart';

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
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key}) {
    print(listData);
  }

  List<Widget> _initListData() {
    List<Widget> list = [];

    for (var i = 0; i < listData.length; i++) {
      Map<String, String> item = listData[i];
      list.add(ListTile(
        title: Text("${item["title"]} -- $i"),
        subtitle: Text("${item["author"]} -- $i"),
        trailing: Image.network("${item["imageUrl"]}"),
      ));
      list.add(const Divider());
    }

    return list;
  }

  List<Widget> _initListData2() {

    var tempList = listData.map((value) {
      return ListTile(
        title: Text("${value["title"]}"),
        subtitle: Text("${value["author"]}"),
        trailing: Image.network("${value["imageUrl"]}"),
      );
    });

    return tempList.toList();
    
  }

  // @override
  // Widget build(BuildContext context) {
  //   return ListView(
  //     children: _initListData2(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: (context,index){
        return ListTile(
        title: Text("${listData[index]["title"]}"),
        subtitle: Text("${listData[index]["author"]}"),
        trailing: Image.network("${listData[index]["imageUrl"]}"),
      ); 
    });
  }
}
