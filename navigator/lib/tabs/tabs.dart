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
      appBar: AppBar(
         title: Text(tabsTitleArray[this.currentIndex]),
         centerTitle: true,
      ),
      body: tabsContainerArray[this.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: tabsTitleArray[0]),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: tabsTitleArray[1]),
        BottomNavigationBarItem(icon: Icon(Icons.face),label: tabsTitleArray[2]),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: tabsTitleArray[3])],
        currentIndex: this.currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index){
            print('点击的是第$index个tab');
            setState(() {
              this.currentIndex = index;
            });
        },
        ),  
        drawer: Drawer(
          child: Column(
            children: [ Row(
                children: [ Expanded(  //使子元素布满空间
                  child:UserAccountsDrawerHeader(
                    accountName: Text('大漠孤烟'),
                    accountEmail:Text('JSNYB001@aliyun.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Finews.gtimg.com%2Fnewsapp_match%2F0%2F12114222763%2F0.jpg&refer=http%3A%2F%2Finews.gtimg.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1631027009&t=6736426935dafb469760444d6d6f8b9d'),
                    ),
                    //最多放三个
                    otherAccountsPictures: [
                                            Image.network('https://img2.huashi6.com/images/resource/p20429/2021/04/30/194921_34392112401.jpg?imageView2/3/q/85/interlace/1/w/2560/h/2560'),
                                            Image.network('https://img2.huashi6.com/images/resource/p20429/2021/04/30/194136_35013638087.jpg?imageView2/3/q/85/interlace/1/w/2560/h/2560'),
                                            Image.network('https://img2.huashi6.com/images/resource/p20429/2021/04/30/1948_35500823130.jpg?imageView2/3/q/85/interlace/1/w/2560/h/2560'),
                                            ],
                   // otherAccountsPicturesSize: Size(40, 40),
                    decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('https://ss0.baidu.com/94o3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/b2de9c82d158ccbfb40a4fd81bd8bc3eb035419a.jpg'))
               ),
                    )
              //     DrawerHeader(
              // child: Text(''),
              //  decoration: BoxDecoration(
              //   image: DecorationImage(
              //     fit: BoxFit.fill,
              //     image: NetworkImage('https://ss0.baidu.com/94o3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/b2de9c82d158ccbfb40a4fd81bd8bc3eb035419a.jpg'))
              //  ),
              // ), 
              )
              ],),
              
              //Divider(color: Colors.grey,),
              ListTile(
                title: Text('空间'),
                leading: CircleAvatar(
                  child: Icon(Icons.home))),
              Divider(color: Colors.red),
              ListTile(
                title: Text('我的'),
                leading: CircleAvatar(
                  child: Icon(Icons.people))),
              Divider(color: Colors.grey),
               ListTile(
                title: Text('设置'),
                onTap: (){
                  //Navigator.of(context).pop();
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/login');
                },
                leading: CircleAvatar(
                  child: Icon(Icons.settings))),
              Divider(color: Colors.red),
            ]
          ),
        ), 
        endDrawer: Drawer(
          child: Text('再见'),
        ), 
    );
    
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }