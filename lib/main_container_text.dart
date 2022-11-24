import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Demo 123"),
      ),
      body: Column(children: const [MyBody(), MyButton(), MyText()]),
    ),
  ));
}

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: 300,
        height: 100,
        margin: const EdgeInsets.only(top: 50, bottom: 10),
        // transform: Matrix4.translationValues(40, 40, 0), //位移
        // transform: Matrix4.rotationZ(0.1),//旋转
        transform: Matrix4.skewY(0.1), //倾斜
        decoration: BoxDecoration(
            color: Colors.red, //背景色
            border: Border.all(color: Colors.blue, width: 1), //边框
            borderRadius: BorderRadius.circular(10), //圆角，也可以实现圆形§
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
              ) //阴影
            ],
            gradient:
                const LinearGradient(colors: [Colors.yellow, Colors.red]) //渐变
            ),
        child: const Text(
          "Flutter Container Demo",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      alignment: Alignment.centerLeft,
      width: 200,
      height: 50,
      //  margin: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.only(left: 30),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      child: const Text(
        "Button",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      padding: const EdgeInsets.all(10),
      width: 300,
      height: 100,
      decoration: const BoxDecoration(color: Colors.blue),
      child: const Text(
        "Flutter Text Flutter Text Flutter Text Flutter Text Flutter Text Flutter Text",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w800, //字体加粗
            fontStyle: FontStyle.italic, //倾斜
            letterSpacing: 4 ,//字间距
            wordSpacing: 4, //单词间距
            decoration: TextDecoration.underline,//下划线
            decorationColor: Colors.yellow,
            decorationStyle: TextDecorationStyle.dashed
            ),
        maxLines: 1, //设置最大行数
        overflow: TextOverflow.ellipsis, //溢出显示点点点
      ),
    );
  }
}
