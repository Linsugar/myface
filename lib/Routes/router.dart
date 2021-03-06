import 'package:flutter/material.dart';


class RoutePage{
  static final routeName = {
    // "/register":(context,{argument})=>register(),
    // "/home":(context,{argument})=>Home(),
    // "/homeChild":(context,{argument})=>HomeChild(argument),
    // "/map":(context,{argument})=>ShowMapPage(),
    // "/PetDetails":(context,{argument})=>PetDetails(argument),
    // "/login":(context,{argument})=>login(),
    // "/ChatLeft":(context,{argument})=>ChatLeft(argument),
    // "/MarkWeb":(context,{argument})=>MarkWeb(argument),
  };

// ignore: missing_return, top_level_function_literal_block
  static var onGenerateRoute = (RouteSettings settings) {
    print("获取到的setting：${settings.name}");
    final String ?name = settings.name;
    final Function ?pageContentBuilder = routeName[name];
    if (pageContentBuilder != null) {
      //能寻找到对应的路由
      if (settings.arguments != null) {
        //页面跳转前有传参
        final Route route = MaterialPageRoute(builder: (context) => pageContentBuilder(context, argument: settings.arguments));
        return route;
      } else {
        //页面跳转前没有传参
        final Route route = MaterialPageRoute(builder: (context) => pageContentBuilder(context));
        return route;
      }
    }
  };

}