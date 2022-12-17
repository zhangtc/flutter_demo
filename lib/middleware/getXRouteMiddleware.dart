import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXRouteMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    print(" ---> GetXRouteMiddleWare:$route");
    return null; //不做任何操作
    
    //跳转拦截 重定义到GetRouteArguments
    // return const RouteSettings(name: "/GetRouteArguments", arguments: {"id": 889911});
  }
}
