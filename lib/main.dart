import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/appPages.dart';
import 'package:flutter_demo/pages/hero.dart';
import 'package:flutter_demo/routes.dart';
import 'package:get/get.dart';

import 'pages/getXRoute.dart';
import 'pages/getXRouteArguments.dart';
import 'pages/getXRouteBack.dart';
import 'pages/news.dart';

void main() {
  // runApp(const MyApp());
  runApp(const GetXRouteApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      // home: const Tabs(),
      initialRoute: "/",
      // routes: routesMap.getRoutes(context),
      onGenerateRoute: onGenerateRoute,
    
      
    );
  }
}


class GetXRouteApp extends StatelessWidget {
  const GetXRouteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "GetXRouteApp",
        theme: ThemeData(
            primarySwatch: Colors.amber,
            appBarTheme: const AppBarTheme(centerTitle: true)),
         initialRoute: "/",
         defaultTransition: Transition.rightToLeft, //默认动画效果
        getPages: AppPages.routes
         
        // defaultTransition: Transition.rightToLeftWithFade,
        // onGenerateRoute: onGenerateRoute
        );
  }
}
