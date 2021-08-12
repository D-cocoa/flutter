
import 'package:flutter/material.dart';
import 'tabs.dart';
import '../pages/homePage.dart';
import '../pages/minePage.dart';
import '../pages/secondPage.dart';
import '../pages/thirdPage.dart';
import '../personInfo/info.dart';
import '../users/login.dart';
import '../users/register.dart';
import '../users/phoneRegister.dart';
import '../users/finish.dart';
import 'tabControler.dart';


  Map<String,WidgetBuilder> routes = {
  '/':(context)=>tabs(),
  '/homePage':(context)=>homePage(),
  '/minePage':(context)=>minePage(),
  '/secondPage':(context)=>secondPage(),
  '/thirdPage':(context)=>thirdPage(),
  '/info':(context,{arguments})=>infoSet(arguments:arguments),
   '/login':(context)=>login(),
   '/register':(context)=>register(),
   '/phoneRegister':(context)=>phoneRegister(),
   '/finish':(context)=>finish(),
   '/tabControler':(context)=>TabBarControllerpage(),
                                     };

  // ignore: top_level_function_literal_block
 var onGenerateRoute = (RouteSettings settings){
       final String? name = settings.name;
       final Function pageContentBuilder = routes[name] as Function;
    if (settings.arguments != null) {
      // 创建路由页面并携带参数
      return MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
    } else {
      return MaterialPageRoute(
          builder: (context) => pageContentBuilder(context));
    }
  };



     
     // 处理参数传递
/*
// ignore: top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  // 获取声明的路由页面函数
  var pageBuilder = myRoutes[settings.name];
  if (pageBuilder != null) {
    if (settings.arguments != null) {
      // 创建路由页面并携带参数
      return MaterialPageRoute(
          builder: (context) =>
              pageBuilder(context,arguments: settings.arguments));
    } else {
      return MaterialPageRoute(
          builder: (context) => pageBuilder(context));
    }
  }
  return MaterialPageRoute(builder: (context) => tabs());
};
*/