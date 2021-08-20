import 'package:flutter/material.dart';
import 'views/IndexPage.dart';
import 'views/login_view.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({ Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //启动页组件
      home:Loading(),

      theme: ThemeData(
        //主题色
        primaryColor: Color(0xff303030),
        //中间的屏幕背景色
        // scaffoldBackgroundColor: Color(0xFFebebeb),
        cardColor: Color(0xff393a3f)
      ),
      routes: <String,WidgetBuilder>
      {
        "/app":(context)=>LoginView(),
      },
    
    );
  }
}

