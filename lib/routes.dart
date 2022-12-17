// import 'package:flutter/material.dart';
//应用ios风格的路由
import 'package:flutter/cupertino.dart';
import 'package:flutter_demo/pages/hero.dart';
import 'package:flutter_demo/pages/pageView.dart';
import 'package:flutter_demo/pages/pageViewBuild.dart';
import 'package:flutter_demo/pages/pageViewFullPage.dart';
import 'package:flutter_demo/pages/pageViewKeepAlive.dart';
import 'package:flutter_demo/pages/pageViewSwiper.dart';
import 'package:flutter_demo/pages/photoView.dart';
import './pages/keyWidgetPage.dart';
import './pages/animatedListPage.dart';
import './pages/animatedPage.dart';
import './pages/photoViewGalleryPage.dart';
import 'pages/getXPage.dart';

import './pages/tabs_float_action_button.dart';
import './pages/search.dart';
import './pages/form.dart';
import './pages/news.dart';
import './dialog.dart';
import 'pages/getXRouteBack.dart';


const rootPage = "/";
const search = "/search";
const form = "/form";
const news = "/news";
const dialog = "/dialog";
const pageView = "/pageView";
const pageViewBuild = "/pageViewBuild";
const pageViewFullPage = "/pageViewFullPage";
const pageViewSwiper = "/pageViewSwiper";
const pageViewKeepAlive = "/pageViewKeepAlive";
const keyWidgetPage = "/keyWidgetPage";
const animatedListPage = "/animatedListPage";
const animatedContainerPage = "/animatedContainerPage";
const hero="/heroPage";
const photoViewPage="/photoViewPage";
const photoViewGalleryPage="/photoViewGalleryPage";
const getXPage="/GetXPage";
const getXRoute="/GetXRoute";
const getXRouteBack="/GetXRouteBack";



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
  pageView:(context) => const PageViewPage(),
  pageViewBuild:(context) => const PageViewBuilderPage(),
  pageViewFullPage:(context) => const PageViewFullPage(),
  pageViewSwiper:(context) => const PageViewSwiper(),
  pageViewKeepAlive:(context) => const PageViewKeepAlive(),
  keyWidgetPage:(context) => const KeyWidgetPage(),
  animatedListPage:(context) => const AnimatedListPage(),
  animatedContainerPage:(context) => const AnimatedContainerPage(),
  hero:(context,{arguments}) =>  HeroPage(arguments: arguments),
  photoViewPage:(context) =>  const PhotoViewPage(),
  photoViewGalleryPage:(context,{arguments}) =>  PhotoViewGalleryPage(arguments: arguments),
  getXPage:(context) =>  const GetXPage(),
  getXRouteBack:(context) =>  const GetXRouteBack(),

};

var onGenerateRoute = (RouteSettings settings) {
  print("settings: $settings");
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
