import 'package:flutter/material.dart';
import 'contentPage.dart';
class TabBarControllerpage extends StatefulWidget {
  const TabBarControllerpage({ Key? key }) : super(key: key);

  @override
  _TabBarControllerpageState createState() => _TabBarControllerpageState();
}
//with SingleTickerProviderStateMixin
class _TabBarControllerpageState extends State<TabBarControllerpage> with SingleTickerProviderStateMixin{
  late TabController _tabC;
  int _index = 0 ;
  List _tabTitleArray = ['关注','发现','搜索','更多'];
  
  @override
  void dispose() {//生命周期函数，销毁
    // TODO: implement dispose
    super.dispose();
    _tabC.dispose();
  }
  @override
  void initState() {
    _tabC = new TabController(length:_tabTitleArray.length, vsync: this,initialIndex: _index) ;
    super.initState();
    

    _tabC.addListener(() {
      
      //改变状态需要用这个方法
      setState(() {
        _index = _tabC.index;
      });
      print('监听变化--${_tabC.indexIsChanging}--${_tabC.offset}==$_index');
    });
  }//初始化 _tabController

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
             title:TabBar(
               controller:  this._tabC,
               tabs:_tabTitleArray.map((e){return Text(e);}).toList(),
               //isScrollable: true,//是否滑动
               indicatorSize: TabBarIndicatorSize.label,//下方颜色条的大小
               ),
              ),
              body: TabBarView(
         controller: this._tabC,
         children: createSameContentPages(_tabTitleArray),
         ),

       
    );
  }

 List<Widget> createSameContentPages(List tabList) {
    List<Widget> desList = [];
    for (int i = 0; i < tabList.length; i++) {
      //contentPage创建新的widget
      desList.add(contentPage(tabList[i]));
    }
    return desList;
  }




}