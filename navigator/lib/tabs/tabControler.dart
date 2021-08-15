import 'package:flutter/material.dart';
class TabBarControllerpage extends StatefulWidget {
  const TabBarControllerpage({ Key? key }) : super(key: key);

  @override
  _TabBarControllerpageState createState() => _TabBarControllerpageState();
}
class _TabBarControllerpageState extends State<TabBarControllerpage> with SingleTickerProviderStateMixin{
  late TabController _tabC;
  int _index = 0 ;
  @override
  void dispose() {//生命周期函数，销毁
    // TODO: implement dispose
    super.dispose();
    _tabC.dispose();
  }
  @override
  void initState() {
    super.initState();
    _tabC = new TabController(length: 4, vsync: this,initialIndex: _index) ;

    _tabC.addListener(() {
      print('监听变化--${_tabC.indexIsChanging}--${_tabC.offset}');
      //改变状态需要用这个方法
      setState(() {
        _index = _tabC.index;
      });
    });
    

  }//初始化 _tabController
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
             title:TabBar(
               controller:  this._tabC,
               tabs:[Text('关注'),Text('发现'),Text('搜索'),Text('更多')],
               //isScrollable: true,//是否滑动
               indicatorSize: TabBarIndicatorSize.label,//下方颜色条的大小
               ),
              // Row(
              //  children: [
              //    Expanded(
              //      child: TabBar(tabs:citySite,isScrollable: true))
              //  ], ),
                   ),
       body: TabBarView(
         controller: this._tabC,
         children: [
           ListView(
           children: [ListTile(title:Text(_tabC.index.toString()*200))],
         ),
         ListView(
           children: [ListTile(title:Text(_tabC.index.toString()*200),)],
         ),
         ListView(
           children: [ListTile(title:Text(_tabC.index.toString()*200))],
         ),
         ListView(
           children: [ListTile(title:Text(_tabC.index.toString()*200),)],
         ),
        
         ]
         ),
    );
  }
}