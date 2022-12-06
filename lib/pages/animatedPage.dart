import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key});

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

//遮住标题栏效果
class _AnimatedContainerPageState1 extends State<AnimatedContainerPage> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            appBar: AppBar(
              title: const Text("AnimatedContainerPage"),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                setState(() {
                  flag = !flag;
                });
              },
              child: const Icon(Icons.refresh),
            ),
            body: Stack(
              children: [
                ListView(
                  children: const [
                    ListTile(
                      title: Text("我是一个列表"),
                    ),
                  ],
                ),
              ],
            )),
        Positioned(
          left: 0,
          top: 0,
          bottom: 0,
          child: Align(
            alignment: Alignment.topLeft,
            child: AnimatedContainer(
              duration: const Duration(seconds: 1, milliseconds: 100),
              width: 150,
              height: double.infinity,
              transform: Matrix4.translationValues(flag ? -150 : 0, 0, 0),
              color: Colors.red,
            ),
          ),
        )
      ],
    );
  }
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  bool flag = true,
      paddingFlag = true,
      opacityFlag = true,
      positionedFlag = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //
    print("width:${size.width} \nheight:${size.height}");
    return Scaffold(
        appBar: AppBar(
          title: const Text("AnimatedContainerPage"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              flag = !flag;
            });
          },
          child: const Icon(Icons.refresh),
        ),
        body: LayoutBuilder(builder: (context, container) {
          return Stack(
            children: [
              ListView(
                children: const [
                  ListTile(
                    title: Text("我是一个列表"),
                  ),
                ],
              ),
              Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1, milliseconds: 100),
                    width: 150,
                    height: double.infinity,
                    transform: Matrix4.translationValues(flag ? -150 : 0, 0, 0),
                    color: Colors.red,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    paddingFlag = !paddingFlag;
                  });
                },
                child: AnimatedPadding(
                  curve: Curves.bounceInOut, //动画效果
                  duration: const Duration(seconds: 6),
                  padding:
                      EdgeInsets.fromLTRB(10, paddingFlag ? 10 : 200, 0, 0),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    opacityFlag = !opacityFlag;
                  });
                },
                child: AnimatedOpacity(
                  //透明度
                  duration: const Duration(seconds: 1),
                  opacity: opacityFlag ? 1 : 0.5,
                  child: Container(
                    margin: const EdgeInsets.only(top: 50, left: 10),
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    child: AnimatedDefaultTextStyle(
                      duration: const Duration(seconds: 1),
                      style: TextStyle(
                          fontSize: opacityFlag ? 18 : 12,
                          color: opacityFlag ? Colors.white : Colors.red),
                      child: Text(
                          opacityFlag ? "Flutter" : "AnimatedDefaultTextStyle"),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.yellow,
                  child: AnimatedSwitcher(
                    //当子元素改变的时候会触发动画
                    transitionBuilder: ((child, animation) {
                      //动画效果
                      return ScaleTransition(
                        scale: animation,
                        child: child,
                      );
                    }),
                    duration: const Duration(seconds: 1),
                    child: opacityFlag
                        ? const CircularProgressIndicator()
                        : Image.asset(
                            "images/a.jpeg",
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 200,
                  height: 100,
                  margin: const EdgeInsets.only(bottom: 230),
                  color: Colors.yellow,
                  child: AnimatedSwitcher(
                    //当子元素改变的时候会触发动画
                    transitionBuilder: ((child, animation) {
                      //动画效果
                      return ScaleTransition(
                        scale: animation,
                        child: child,
                      );
                    }),
                    duration: const Duration(seconds: 1),
                    //uniqueKey 每次都会更新，key改变之后，AnimatedSwitcher 认为Text不是同一个
                    child: Text(
                        key: UniqueKey(),
                        opacityFlag ? "Flutter" : "AnimatedSwitcher"),
                  ),
                ),
              ),
              AnimatedPositioned(
                  right: positionedFlag ? 10 : size.width - 70,
                  top:
                      positionedFlag ? 10 : container.maxHeight - 70, //获取父容器的大小
                  duration: const Duration(seconds: 1),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        positionedFlag = !positionedFlag;
                      });
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      color: Colors.red,
                    ),
                  )),
            ],
          );
        }));
  }
}
