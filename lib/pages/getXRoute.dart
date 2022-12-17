import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/getXRouteBack.dart';
import 'package:get/get.dart';
import 'package:flutter_demo/routes.dart';

class GetXRoute extends StatelessWidget {
  const GetXRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetXRoute"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/GetXRouteBack");
                // Get.to(const PhotoViewPage());

                //没有返回按钮
                // Get.off(const GetXRouteBack());
              },
              child: const Text("GetXRouteBack")),
          ElevatedButton(
              onPressed: () {
                //  Navigator.pushNamed(context, news,
                //       arguments: {"aid": 8888999});
                Get.toNamed("/GetRouteArguments", arguments: {"id": 889911});
              },
              child: const Text("GetRouteArguments")),
        ],
      )),
    );
  }
}
