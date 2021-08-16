import 'package:flutter/material.dart';
import 'package:navigator/tabs/arguments.dart';

class homePage extends StatefulWidget {
  const homePage({ Key? key }) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  Map arguments={'id':'GOGOGO','name':'333'};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
        centerTitle: true,
      ),
      body: Row(
     // mainAxisAlignment: MainAxisAlignment.spaceEvenly,// 间距相等
     // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
         
          child:Container(
            height: 50,
            
            child: TextButton(onPressed: (){
              Navigator.pushNamed(context, '/info',arguments:objectArguments('title', 'message', {'id':'我是字典'}));
            //Navigator.pushNamed(context,'/info',arguments: {'id':'GOGOGO'});
            },
             child:Text('第一个'),
             
             style: ButtonStyle(
               //背景颜色
                    backgroundColor: MaterialStateProperty.resolveWith((states) 
                    {
                      //设置按下时的背景颜色
                      return states.contains(MaterialState.pressed)?Colors.blue[200]:Colors.orange;
                   }), 
                    
                    /*
                    //设置按钮上字体与图标的颜色
                    //foregroundColor: MaterialStateProperty.all(Colors.deepPurple),
                    //更优美的方式来设置
                    foregroundColor: MaterialStateProperty.resolveWith(
                          (states) {
                        if (states.contains(MaterialState.focused) &&
                            !states.contains(MaterialState.pressed)) {
                          //获取焦点时的颜色
                          return Colors.blue;
                        } else if (states.contains(MaterialState.pressed)) {
                          //按下时的颜色
                          return Colors.deepPurple;
                        }
                        //默认状态使用灰色
                        return Colors.blue;
                      },
                    ),*/
             ),
             
              )
          )

      ),Expanded(
          flex: 1,
          child: Container(
            height: 50,
            child: TextButton(onPressed: (){
              Navigator.pushNamed(context, '/tabControler');
            },
             child:Text('第二个'),
             style: ButtonStyle(
               //背景颜色
                    backgroundColor: MaterialStateProperty.resolveWith((states) {
                      //设置按下时的背景颜色
                       //设置按下时的背景颜色
                    return states.contains(MaterialState.pressed)?Colors.blue[200]:Colors.purple;
                    })),
              )

      )
      ),Expanded(
         // flex: 1,
          child: Container(
            height: 50,
        
            child: TextButton.icon(onPressed: (){}, 
            icon: Icon(Icons.settings), label: Text('设置'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                      //设置按下时的背景颜色
                    return states.contains(MaterialState.pressed)?Colors.blue[200]:Colors.orange;
                    }),
            ),)
      )
      )
      ]
     
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
              //分割线
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
                  Navigator.pop(context);//目的是返回后直接关闭drawer
                  Navigator.pushNamed(context, '/login');
                },
                leading: CircleAvatar(
                  child: Icon(Icons.settings))),
              Divider(color: Colors.red),
            ]
          ),
        ), 
    );
}
}