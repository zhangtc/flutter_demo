import 'package:flutter/material.dart';
import 'package:flutter_demo/routes.dart';
import 'package:get/get.dart';

import 'getXRoute.dart';

class GetXRouteBack extends StatelessWidget {
  const GetXRouteBack({super.key});

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
                //返回
                // Get.back();
                //返回根
                Get.offAll(const GetXRoute());
              },
              child: const Text("back")),
        ],
      )),
    );
  }
}
