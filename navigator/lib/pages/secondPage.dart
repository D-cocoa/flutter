import 'package:flutter/material.dart';
class secondPage extends StatefulWidget {
  const secondPage({ Key? key }) : super(key: key);

  @override
  _secondPageState createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  List<Widget> citySite = [Tab(text: '市区'), Tab(text: '叶县'), Tab(text: '郏县'), 
                   Tab(text: '宝丰'),Tab(text: '鲁山'),Tab(text: '石龙区'), 
                   Tab(text: '舞钢')];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: citySite.length, 
      child: Scaffold(
      appBar: AppBar(
             title:TabBar(
               tabs:citySite,
               isScrollable: true,//是否滑动
               indicatorSize: TabBarIndicatorSize.label,
               ),
              // Row(
              //  children: [
              //    Expanded(
              //      child: TabBar(tabs:citySite,isScrollable: true))
              //  ], ),
                   ),
       body: TabBarView(
         
         children: [
           ListView(
           children: [ListTile(title:Text('111'))],
         ),
         ListView(
           children: [ListTile(title:Text('222'),)],
         ),
         ListView(
           children: [ListTile(title:Text('333'),)],
         ),
         ListView(
           children: [ListTile(title:Text('444'),)],
         ),
         ListView(
           children: [ListTile(title:Text('555'),)],
         ),
         ListView(
           children: [ListTile(title:Text('666'),)],
         ),
         ListView(
           children: [ListTile(title:Text('777'),)],
         ),
         ]
         ),
    )
    );
  
  }
}