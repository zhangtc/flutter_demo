import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXPage extends StatefulWidget {
  const GetXPage({super.key});

  @override
  State<GetXPage> createState() => _GetXPageState();
}

class _GetXPageState extends State<GetXPage> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "GetMaterialApp",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("GetXPage"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.defaultDialog(
                          title: "提示Title!",
                          middleText: "提示内容",
                          confirm: ElevatedButton(
                              onPressed: () {
                                print("确认");
                                // Navigator.pop(context);
                                Get.back(closeOverlays: true,canPop: true);
                              },
                              child: const Text("确认")),
                          cancel: ElevatedButton(
                              onPressed: () {
                                print("取消");
                                // Navigator.pop(context);
                                Get.back(closeOverlays: true);
                              },
                              child: const Text("取消")));
                    },
                    child: const Text("GetX defaultDialog")),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.snackbar("title", "content",
                          snackPosition: SnackPosition.BOTTOM);
                    },
                    child: const Text("GetX snackbar")),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.bottomSheet(Container(
                        color: Get.isDarkMode?Colors.white:Colors.black26,
                        height: 200,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.wb_sunny_outlined,
                                  color: Get.isDarkMode?Colors.black87:Colors.white),
                              title: Text(
                                "白天模式",
                                style: TextStyle(color: Get.isDarkMode?Colors.black87:Colors.white),
                              ),
                              onTap: () {
                                Get.changeTheme(ThemeData.light());
                                Get.back(closeOverlays: true);
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.wb_sunny,
                                  color: Get.isDarkMode?Colors.black87:Colors.white),
                              title: Text(
                                "夜晚模式",
                                style: TextStyle(color: Get.isDarkMode?Colors.black87:Colors.white),
                              ),
                              onTap: () {
                                Get.changeTheme(ThemeData.dark());
                                Get.back(closeOverlays: true);
                              },
                            ),
                          ],
                        ),
                      ));
                    },
                    child: const Text("GetX bottomSheet切换主题")),
                      const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.snackbar("title", "content",
                          snackPosition: SnackPosition.BOTTOM);
                    },
                    child: const Text("GetX snackbar")),
              ],
            ),
          ),
        ));
  }
}
