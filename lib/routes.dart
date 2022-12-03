// import 'package:flutter/material.dart';
//应用ios风格的路由
import 'package:flutter/cupertino.dart';

import './pages/tabs_float_action_button.dart';
import './pages/search.dart';
import './pages/form.dart';
import './pages/news.dart';
import './dialog.dart';


const rootPage = "/";
const search = "search";
const form = "form";
const news = "news";
const dialog = "dialog";

Map<String, WidgetBuilder> routes = {
  rootPage: (context) => const Tabs(),
  search: (context) => const SearchPage(),
  form: (context) {
    return const FormPage();
  },
  news: (context, {arguments}) {
    return NewsPages(arguments: arguments);
  },
  dialog:(context)=>const DialogPage(),
};

var onGenerateRoute = (RouteSettings settings) {
  print("settings: ${settings}");
  print("settings.name: ${settings.name}");
  print("settings.arguments: ${settings.arguments}");

  final String? name = settings.name;

  final Function? pageContentBuilder = routes[name];

  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      // final Route route = MaterialPageRoute(
      final Route route = CupertinoPageRoute(
          builder: ((context) =>
              pageContentBuilder(context, arguments: settings.arguments)));

      return route;
    } else {
      // Route route = MaterialPageRoute(
      Route route = CupertinoPageRoute(
          builder: ((context) => pageContentBuilder(context)));
      return route;
    }
  }

  return null;
};