import 'package:flutter/material.dart';
import './pages/tabs/home.dart';
import './pages/tabs/category.dart';
import './pages/tabs/settings.dart';
import './pages/tabs/user.dart';

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
  var index = 0;
  List<Widget> tabs = const [Home(), Category(), Settings(), User()];

//生命周期函数：当组件初始化的时候就会触发
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
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
      ),
      body: tabs[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index, //底部菜单选中序列
        iconSize: 28, //地方菜单大小
        fixedColor: Colors.amber, //选中颜色
        type: BottomNavigationBarType.fixed, //如果底部有4个或以上的菜单，需要配置
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "用户"),
        ],
        onTap: (value) {
          //点击菜单触发的事件
          setState(() {
            index = value;
          });

          print("index:$value");
        },
      ),
    );
  }
}
