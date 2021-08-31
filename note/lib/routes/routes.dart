import 'package:flutter/material.dart';
import 'package:note/View/HomePage.dart';
import '../Login/Login.dart';




  Map<String,WidgetBuilder> routes = {
  '/':(context)=>LoginPage(),
  'home':(context)=>HomePage(),


  //'/info':(context,{arguments})=>infoSet(arguments:arguments),
   
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