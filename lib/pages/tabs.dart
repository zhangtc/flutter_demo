import 'package:flutter/material.dart';
import './tabs/home.dart';
import './tabs/category.dart';
import './tabs/settings.dart';
import './tabs/user.dart';

//有状态组件
class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Tabs> {
  var index = 0;
  List<Widget> tabs = const [Home(), Category(), Settings(), User()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Demo 有状态组件",
          style: TextStyle(color: Colors.white),
        ),
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
