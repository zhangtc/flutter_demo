import 'package:flutter/material.dart';
import './tabs/home.dart';
import './tabs/category.dart';
import './tabs/settings.dart';
import './tabs/user.dart';
import './tabs/add.dart';

const String imagesUrl1 =
    "https://play-lh.googleusercontent.com/DGJ2OhH8GD92VnBtOrfThkKflETS9xfTWMWrpq_nLED2CynN9nUtAbjIjQtwrBPmhEkL=w240-h480-rw";

const String imagesUrl2 =
    "https://play-lh.googleusercontent.com/5e7z5YCt7fplN4qndpYzpJjYmuzM2WSrfs35KxnEw-Ku1sClHRWHoIDSw3a3YS5WpGcI=w240-h480-rw";

//有状态组件
class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Tabs> {
  var index = 0;
  List<Widget> tabs = const [Home(), Category(), Add(), Settings(), User()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Demo 有状态组件",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: DrawerHeader(
                      decoration: const BoxDecoration(
                          color: Colors.yellow,
                          image: DecorationImage(
                              image: AssetImage("images/a.jpeg"),
                              fit: BoxFit.cover)),
                      child: Column(
                        children: const [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(imagesUrl1),
                            ),
                            title: Text(
                              "Title",
                              style: TextStyle(color: Colors.amber),
                            ),
                            subtitle: Text(
                              "data@gmail.com",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text("个人中心"),
            ),
            const Divider(),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text("系统设置"),
            ),
            const Divider(),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: UserAccountsDrawerHeader(
                      accountName: const Text("UserAccountsDrawerHeader"),
                      accountEmail:
                          const Text("UserAccountsDrawerHeader@gmail.com"),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/a.jpeg"),
                              fit: BoxFit.cover)),
                      currentAccountPicture: const CircleAvatar(
                        backgroundImage: NetworkImage(imagesUrl1),
                      ),
                      otherAccountsPictures: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(imagesUrl2),
                        ),
                        Image.network(imagesUrl1),
                        Image.network(imagesUrl2),
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
      body: tabs[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index, //底部菜单选中序列
        iconSize: 28, //地方菜单大小
        fixedColor: index == 2 ? Colors.blue : Colors.amber, //选中颜色
        type: BottomNavigationBarType.fixed, //如果底部有4个或以上的菜单，需要配置
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "添加"),
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
      floatingActionButton: Container(
        width: 64,
        height: 64,
        margin: const EdgeInsets.only(top: 6),
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
        ),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              index = 2;
            });
          },
          backgroundColor: index == 2 ? Colors.blue : Colors.yellow,
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
