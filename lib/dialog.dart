import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import './widget/myDialog.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({super.key});

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  void _alertDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("提示信息"),
            content: const Text("您确定要删除吗？"),
            actions: [
              TextButton(
                  onPressed: () {
                    print("--> ok");
                    Navigator.of(context).pop("ok");
                  },
                  child: const Text("确认")),
              TextButton(
                  onPressed: () {
                    print("--> cancel");
                    Navigator.of(context).pop("cancel");
                  },
                  child: const Text("取消")),
            ],
          );
        });

    print("result: $result");
  }

  void _simpleDialog() async {
    var result = await showDialog(
        barrierDismissible: false, //点击灰色背景的时候是否消失
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text("请选择语言："),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  print("汉语");
                  Navigator.pop(context, "汉语");
                },
                child: const Text("汉语"),
              ),
              const Divider(),
              SimpleDialogOption(
                onPressed: () {
                  print("英语");
                  Navigator.of(context).pop();
                },
                child: const Text("英语"),
              ),
              const Divider(),
              SimpleDialogOption(
                onPressed: () {
                  print("日语");
                  Navigator.of(context).pop();
                },
                child: const Text("日语"),
              ),
              const Divider(),
            ],
          );
        });

    print("result: $result");
  }

  void _modelBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 230,
            child: Column(
              children: [
                ListTile(
                  title: const Text("分享"),
                  onTap: () {
                    print("分享");
                    Navigator.pop(context, "分享");
                  },
                ),
                const Divider(),
                ListTile(
                  title: const Text("收藏"),
                  onTap: () {
                    print("收藏");
                    Navigator.of(context).pop("收藏");
                  },
                ),
                const Divider(),
                ListTile(
                  title: const Text("取消"),
                  onTap: () {
                    print("取消");
                    Navigator.of(context).pop("取消");
                  },
                ),
                const Divider(),
              ],
            ),
          );
        });

    print("result: $result");
  }

  void _toast() {
    Fluttertoast.showToast(
        msg: "提示信息",
        toastLength: Toast.LENGTH_SHORT, //android 平台
        gravity: ToastGravity.BOTTOM, //方向
        timeInSecForIosWeb: 1, //提示时间，针对ios和web
        backgroundColor: Colors.yellow, //背景颜色
        textColor: Colors.white, //文本颜色
        fontSize: 16.0); //文本字体颜色
  }

  void _myDialog() async{

  var result = await showDialog(context: context, builder: (context){
          return MyDialog(title: "title",content: "content", onTap: (){
              print("onTap");
              Navigator.pop(context,"onTop111");
          });
    });

    print("result:$result");

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("alertDialog")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: _alertDialog, child: const Text("alertDialog")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: _simpleDialog, child: const Text("simpleDialog")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: _modelBottomSheet,
                child: const Text("modelBottomSheet")),
            ElevatedButton(onPressed: _toast, child: const Text("Toast")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: _myDialog, child: const Text("自定义Dialog")),
            const SizedBox(
              height: 20,
            ),
           
          ],
        ),
      ),
    );
  }
}
