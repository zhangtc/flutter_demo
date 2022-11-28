import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //去掉debug图标
      title: "Flutter AppBar",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

//生命周期函数：当组件初始化的时候就会触发
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            print(" --> IconButton");
          },
        ),
        title: const Text("Flutter AppBar"),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
              onPressed: () {
                print("搜索");
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                print("更多");
              },
              icon: const Icon(Icons.more_horiz)),
        ],
        bottom: TabBar(controller: _tabController, tabs: const [
          Text("关注"),
          Text("热门"),
          Text("推荐"),
        ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
        ListView(
          children: const [
            ListTile(
              title: Text("关注"),
            )
          ],
        ),
        ListView(
          children: const [
            ListTile(
              title: Text("热门"),
            )
          ],
        ),
        const Text("推荐")
      ]),
    );
  }
}
