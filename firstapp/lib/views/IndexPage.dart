import 'package:flutter/material.dart';
import 'dart:async';

class Loading extends StatefulWidget {
  Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    new Future.delayed(Duration(seconds: 3),(){
        //3秒后跳转到其他路由
        Navigator.of(context).pushReplacementNamed("/app");
    });

  }

  @override
  Widget build(BuildContext context) {
 	//启动图片
    return Container(
       child: Image.asset("images/launch.jpg",fit: BoxFit.cover)
    );
  }
}
