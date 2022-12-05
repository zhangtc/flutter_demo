import 'package:flutter/material.dart';

class KeyWidgetPage extends StatefulWidget {
  const KeyWidgetPage({super.key});

  @override
  State<KeyWidgetPage> createState() => _KeyWidgetPageState();
}

class _KeyWidgetPageState extends State<KeyWidgetPage> {
  final GlobalKey _globalKey1 = GlobalKey();
  final GlobalKey _globalKey2 = GlobalKey();
  final GlobalKey _globalKey3 = GlobalKey();
  List<Widget> list = [
    const Box(key: ValueKey('1'), color: Colors.red),
    Box(key: UniqueKey(), color: Colors.amber), //uniqueKey 唯一值，自动随机生成
    const Box(
        key: ObjectKey(Box(
          color: Colors.blue,
        )),
        color: Colors.blue),
  ];

  @override
  void initState() {
    super.initState();
    list = [
      Box(key: _globalKey1, color: Colors.red),
      Box(key: _globalKey2, color: Colors.amber), //uniqueKey 唯一值，自动随机生成
      Box(key: _globalKey3, color: Colors.blue),
    ];
  }

  @override
  Widget build(BuildContext context) {
    print(" --- orientation: ${MediaQuery.of(context).orientation}");

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //获取currentState widget属性
          var boxState = _globalKey1.currentState as _BoxState;
          print("_count: ${boxState._count}");
          setState(() {
            // list.shuffle(); //打乱元素的数据

            ++boxState._count;
            print("_count11: ${boxState._count}");
          });

          //调用currentState Widget的方法
          boxState.run();

          //获取子Widget
          var box = _globalKey1.currentWidget as Box;
          print("  -->  boxTest:${box.BoxTest}");

          //获取子组件的渲染属性
         var renderBox =  _globalKey1.currentContext!.findRenderObject() as RenderBox;
          print(renderBox.size);


        },
        child: const Icon(Icons.refresh),
      ),
      appBar: AppBar(
        title: const Text("KeyWidgetPage"),
      ),
      body: Center(
        child: MediaQuery.of(context).orientation == Orientation.portrait
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: list,
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: list,
              ),
      ),
    );
  }
}

class Box extends StatefulWidget {
  final Color color;
  const Box({Key? key, this.color = Colors.red}) : super(key: key);
  final int BoxTest = 1;

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int _count = 0;

  void run(){
    print("box run fun");
  }

  @override
  Widget build(BuildContext context) {
    print(" ---- _BoxState_count: $_count");

    return SizedBox(
      // margin: const EdgeInsets.only(top: 50),
      height: 100,
      width: 100,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(widget.color)),
          onPressed: () {
            setState(() {
              _count++;
            });
          },
          child: Text(
            "$_count",
            style: const TextStyle(color: Colors.white, fontSize: 18),
          )),
      // decoration: BoxDecoration(
      //     color: Colors.blue, borderRadius: BorderRadius.circular(10)),
    );
  }
}
