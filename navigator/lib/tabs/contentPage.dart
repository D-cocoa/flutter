import 'package:flutter/material.dart';


class contentPage extends StatefulWidget {
  //实际开发可能传入字典，数组
   final String title;

  const contentPage(this.title,{ Key? key}) : super(key: key);

  @override
  _contentPageState createState() => _contentPageState();
}

// ignore: camel_case_types
class _contentPageState extends State<contentPage> with AutomaticKeepAliveClientMixin {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (build, index) {
      return Text("${widget.title} --- $index");
    }));
  }
  @override
  // TODO: implement wantKeepAlive  记忆浏览位置with AutomaticKeepAliveClientMixin
  bool get wantKeepAlive => true;
}