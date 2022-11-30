import 'package:flutter/material.dart';
import '../../keepAliveWrapper.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 8, vsync: this);
    _tabController.addListener(() {

      if (_tabController.animation!.value == _tabController.index) {
              print("tab index ${_tabController.index}");
      }
      
    });
    super.initState();
  }


//生命周期 -> 组件销毁
  @override
  void dispose() {
    super.dispose();
    
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: AppBar(
            elevation: 0.5,
            backgroundColor: Colors.white,
            title: SizedBox(
              height: 30,
              child: TabBar(
                  isScrollable: true,
                  labelStyle: const TextStyle(fontSize: 14),
                  indicatorColor: Colors.red,
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.label,
                  controller: _tabController,
                  onTap: (index){//只能监听点击事件，不能监听滑动事件
                    print("onTap:$index");
                  },
                  tabs: const [
                    Tab(child: Text("关注")),
                    Tab(child: Text("热门")),
                    Tab(child: Text("推荐")),
                    Tab(child: Text("视频")),
                    Tab(child: Text("财经")),
                    Tab(child: Text("娱乐")),
                    Tab(child: Text("体育")),
                    Tab(child: Text("汽车")),
                  ]),
            ),
          )),
      body: TabBarView(controller: _tabController, children:  [
         KeepAliveWrapper(child: ListView(
          children: const [
            ListTile(
              title: Text("关注"),
            ),
            ListTile(
              title: Text("关注"),
            ),
            ListTile(
              title: Text("关注"),
            ),
            ListTile(
              title: Text("关注333"),
            ),
            ListTile(
              title: Text("关注222"),
            ),
            ListTile(
              title: Text("关注111"),
            ),
            ListTile(
              title: Text("关注"),
            ),
            ListTile(
              title: Text("关注"),
            ),
            ListTile(
              title: Text("关注"),
            ),
            ListTile(
              title: Text("关注333"),
            ),
            ListTile(
              title: Text("关注7"),
            ),
            ListTile(
              title: Text("关注8"),
            ),
            ListTile(
              title: Text("关注3339"),
            ),
          ],
        ),),
       const Text("热门"),
       const Text("推荐"),
       const Text("视频"),
       const Text("财经"),
       const Text("娱乐"),
       const Text("体育"),
       const Text("汽车"),
      ]),
    );
  }
}
