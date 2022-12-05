import 'package:flutter/material.dart';
import 'package:flutter_demo/keepAliveWrapper.dart';

class PageViewKeepAlive extends StatefulWidget {
  const PageViewKeepAlive({super.key});

  @override
  State<PageViewKeepAlive> createState() => _PageViewKeepAliveState();
}

class _PageViewKeepAliveState extends State<PageViewKeepAlive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("PageViewKeepAlive")),
      // body:PageView.builder(
      //     itemCount: 10,
      //     scrollDirection: Axis.vertical,
      //     itemBuilder: (context, index) {
      //       return  MyContainer(
      //         num: index,
      //       );
      //     }),
      body: PageView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return KeepAliveWrapper(//注意：如果页面比较多，缓存会消耗内存
                child: MyContainer(
              num: index,
            ));
          }),
    );
  }
}

class MyContainer extends StatefulWidget {
  final int num;
  const MyContainer({super.key, this.num = 0});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

// class _MyContainerState extends State<MyContainer> with AutomaticKeepAliveClientMixin{
//   @override
//   Widget build(BuildContext context) {
//     print("num: ${widget.num}");
//     return Center(
//       child: Text(
//         "第${widget.num}屏",
//         style: Theme.of(context).textTheme.headline1,
//       ),
//     );
//   }

//   @override
//   bool get wantKeepAlive => true; //缓存页面
// }

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    print("num: ${widget.num}");
    return Center(
      child: Text(
        "第${widget.num}屏",
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
