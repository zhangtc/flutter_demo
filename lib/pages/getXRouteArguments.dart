import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetRouteArguments extends StatefulWidget {
  const GetRouteArguments({super.key});

  @override
  State<GetRouteArguments> createState() => _GetRouteArgumentsState();
}

class _GetRouteArgumentsState extends State<GetRouteArguments> {
  @override
  void initState() {
    super.initState();

    print("arguments ${Get.arguments}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetRouteArguments"),
      ),
      body: Center(
        child: Text("Text ${Get.arguments['id']}"),
      ),
    );
  }
}
