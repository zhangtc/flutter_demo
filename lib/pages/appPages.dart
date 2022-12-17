import 'package:flutter_demo/middleware/getXRouteMiddleware.dart';
import 'package:get/get.dart';
import 'package:flutter_demo/pages/getXRoute.dart';
import 'package:flutter_demo/pages/getXRouteArguments.dart';
import 'package:flutter_demo/pages/getXRouteBack.dart';

class AppPages {
  static final routes = [
    GetPage(
        name: "/",
        page: () => const GetXRoute(),
        transition: Transition.fade), //transition 动画效果
    GetPage(
      name: "/GetRouteArguments",
      page: () => const GetRouteArguments(),
    ),
    GetPage(name: "/GetXRouteBack", page: () => const GetXRouteBack(),middlewares: [GetXRouteMiddleWare()]),

  ];
}
