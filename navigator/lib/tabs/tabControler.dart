import 'package:flutter/material.dart';
class TabBarControllerpage extends StatefulWidget {
  const TabBarControllerpage({ Key? key }) : super(key: key);

  @override
  _TabBarControllerpageState createState() => _TabBarControllerpageState();
}
class _TabBarControllerpageState extends State<TabBarControllerpage> with SingleTickerProviderStateMixin{
  late TabController _tabC;
  @override
  void dispose() {//生命周期函数，销毁
    // TODO: implement dispose
    super.dispose();
    _tabC.dispose();
  }
  @override
  void initState() {
    super.initState();
    _tabC = new TabController(length: 2, vsync: this) ;
    print(_tabC);
    _tabC.addListener(() {
      print('监听变化--${_tabC.indexIsChanging}--${_tabC.offset}');
    });
    

  }//初始化 _tabController
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
             title:TabBar(
               controller:  this._tabC,
               tabs:[Text('关注'),Text('发现')],
               //isScrollable: true,//是否滑动
               indicatorSize: TabBarIndicatorSize.label,
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
           children: [ListTile(title:Text('111'))],
         ),
         ListView(
           children: [ListTile(title:Text('222'),)],
         )
        
         ]
         ),
    );
  }
}