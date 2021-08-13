import 'package:flutter/material.dart';
import 'caegy.dart';
import 'home.dart';
import 'setting.dart';
class tabb extends StatefulWidget {
  const tabb({ Key? key }) : super(key: key);

  @override
  _tabbState createState() => _tabbState();
}

class _tabbState extends State<tabb> {
  List list = [home(),caegy(),setting()];
  List titleArr = ['主页','分类','设置'];

   late int _currentIndex=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.titleArr[_currentIndex]),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){
              print('分享');
            }, icon: Icon(Icons.share))
          ],
        ),
        body:list[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          // iconSize:24 ,
          // selectedFontSize: 14,
          // unselectedFontSize: 12,
          showSelectedLabels: true,
          showUnselectedLabels: true,//显示文字
          type: BottomNavigationBarType.fixed,//配置底部可以有多个按钮
          fixedColor: Colors.white,
          backgroundColor: Colors.blue,
          currentIndex: _currentIndex,
          onTap: (int index){
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
          
          BottomNavigationBarItem(icon: Icon(Icons.home),label: this.titleArr[0]),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label: this.titleArr[1]),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: this.titleArr[2])]),
        );
  }
}