import 'package:flutter/material.dart';
import 'cityDescription.dart';
class secondPage extends StatefulWidget {
  const secondPage({ Key? key }) : super(key: key);
  @override
  _secondPageState createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin{
  late TabController _tabB;
  late int _aaaa;
  List citySite = ['市区', '叶县', '郏县', '宝丰', '鲁山', '石龙区', '舞钢'];
  @override
  void initState() {
    super.initState();
    _tabB = new TabController(length:citySite.length, vsync: this,initialIndex: 0) ;
    _tabB.addListener(() {
      //改变状态需要用这个方法
      setState(() {
        _aaaa = _tabB.index;
      });
    });
  }//初始化 _tabController
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('内容可自定义'),
      //   centerTitle: true,
      // ),
      appBar: AppBar(
             title:TabBar(
               controller: _tabB,
               tabs: citySite.map((e){return Text(e);}).toList(),
               isScrollable: true,//是否滑动
               indicatorSize: TabBarIndicatorSize.label,
               ),
                   ),
       body: TabBarView(
         controller: _tabB,
         children: createSecondContentPages(citySite)
         ));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
 

  List<Widget> createSecondContentPages(List tabList) {
    List<Widget> desList = [];
    for (int i = 0; i < tabList.length; i++) {
      //contentPage创建新的widget
      desList.add(CityDescription(tabList[i]));
    }
    return desList;
  }
}