import 'package:flutter/material.dart';
class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('登录页面'),
        ),
        body: Text('这是一个登录界面'),
      ),
    );
  }
}
