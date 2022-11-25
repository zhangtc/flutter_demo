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
      return Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.yellow)),
        child: Column(children: [
          Image.network("${value["imageUrl"]}"),
          const SizedBox(height: 10),
          Text(
            "${value["title"]}",
            textAlign: TextAlign.center,
          ),
        ]),
      );
    });

    return tempList.toList();
  }

 Widget _initListData4(context, index) {
        return Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.yellow)),
          child: Column(children: [
            Image.network("${listData[index]["imageUrl"]}"),
            const SizedBox(height: 20),
            Text(
              "${listData[index]["title"]}",
              textAlign: TextAlign.center,
            ),
          ]),
        );
      }


  List<Widget> _initListData3() {
    List<Widget> data = [];

    for (var i = 0; i < 20; i++) {
      data.add(Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: Colors.blue),
        child:
            Text("GridView -- $i", style: const TextStyle(color: Colors.white)),
      ));
    }

    return data;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: listData.length,
      // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        // crossAxisCount: 2,
        maxCrossAxisExtent: 180,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.7,
      ), //每行像是的数量
      itemBuilder: _initListData4,
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return GridView.count(
  //     padding: const EdgeInsets.all(8),
  //     crossAxisSpacing: 8, //水平间距
  //     mainAxisSpacing: 8, //垂直间距
  //     childAspectRatio: 0.7, //宽高比
  //     crossAxisCount: 3, //每行像是的数量
  //     children: _initListData2(),
  //   );
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return GridView.extent(maxCrossAxisExtent: 100, //子元素的最大长度
  //   children: const [
  //     Icon(Icons.pedal_bike),
  //     Icon(Icons.pedal_bike),
  //     Icon(Icons.pedal_bike),
  //     Icon(Icons.pedal_bike),
  //     Icon(Icons.pedal_bike),
  //     Icon(Icons.pedal_bike),
  //     Icon(Icons.pedal_bike),
  //     Icon(Icons.pedal_bike),
  //     Icon(Icons.pedal_bike),
  //     Icon(Icons.pedal_bike),
  //     Icon(Icons.pedal_bike),
  //     Icon(Icons.pedal_bike),
  //     Icon(Icons.pedal_bike),
  //     Icon(Icons.pedal_bike),
  //     Icon(Icons.pedal_bike),
  //     Icon(Icons.pedal_bike),
  //   ],);
  // }
}
