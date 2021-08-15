import 'package:flutter/material.dart';
import 'array.dart';

// ignore: camel_case_types
class tabs extends StatefulWidget {
  
  const tabs({ Key? key}) : super(key: key);
  @override
  _tabsState createState() => _tabsState();
}

class _tabsState extends State<tabs> {
  late int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //也可以写在每个单独页面
      // appBar: AppBar(
      //    title: Text(tabsTitleArray[this.currentIndex]),
      //    centerTitle: true,
      // ),
      body: tabsContainerArray[this.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: tabsTitleArray[0]),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: tabsTitleArray[1]),
        BottomNavigationBarItem(icon: Icon(Icons.face),label: tabsTitleArray[2]),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: tabsTitleArray[3])],
        currentIndex: this.currentIndex,
        type: BottomNavigationBarType.fixed,//超过3个需要加此条
        onTap: (int index){
            print('点击的是第$index个tab');
            setState(() {
              this.currentIndex = index;
            });
        },
        ),  
        
        // endDrawer: Drawer(
        //   child: Text('再见'),
        // ), 
    );
    
  }
}

 