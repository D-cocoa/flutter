
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //home参数设置为第一屏
      home: Scaffold(
        appBar: AppBar(
          title: Text('title'),
          
        ),
        body:Stack(
          alignment: Alignment(1, 1),
          children:[Container(
          child: Wrap(
          children: [
            myElevabtn(40, '海贼王', Colors.red),
            myElevabtn(10, '王', Colors.green),
            myElevabtn(50, '海嗷嗷嗷', Colors.blue),
            myElevabtn(20, '贼王', Colors.red),
            myElevabtn(30, '海贼王', Colors.black),
            myElevabtn(10, '海王', Colors.orange),
            myElevabtn(10, '海贼王', Colors.red),
          ],
          direction: Axis.horizontal,
          spacing: 20,
          runSpacing: 10,
          alignment: WrapAlignment.spaceEvenly,
          
        ),
        width: 100,
        height: 100,
        color: Colors.green,
        padding: EdgeInsets.all(20),
        ),
        Text('aaaaa')]
        )
        )
        );
  }
}
 // ignore: camel_case_types
 class myElevabtn extends StatelessWidget {
      final double fosize;
      final String btntext;
      final Color coooolor;
  const myElevabtn(this.fosize,this.btntext,this.coooolor,{Key? key} ) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){},  child: Text(btntext,style: TextStyle(fontSize: fosize,color: coooolor),));
  }

 }
/* 
//创建第一屏类
class FirstView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("第一屏导航"),),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Text("这是第一屏"),
            ),
            Container(
              //创建一个按钮
              child: RaisedButton(
                child: Text("点击按钮"),
                //onPressed: (){},增加点击事件,参数是匿名函数
                onPressed: (){
                  //Navigator.push(context, route)
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context){return SecondView();} //传入的是匿名函数
                    //builder:(context)=>SecondView()
                  ));
                },
 
 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 
//创建第二屏类
class SecondView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("第二页视图"),),
      body: Center(
        child: RaisedButton(
          child: Text("返回第一视图"),
          onPressed: (){
            //Navigator.pop(context),返回上一级视图，
            Navigator.pop(context);
          },
        ),
      ),
 
    );
  }
}
*/

//  class mybutton extends StatelessWidget{
//       final String butTitle;
//       const mybutton({Key? key, this.butTitle}) : super(key: key);
      
//       @override
//       Widget build(BuildContext context) {
//         return  ElevatedButton(
//           onPressed: (){}
//         , child: Text('button'));
//       } 
//  }
 
 
/**
RaisedButton按钮组件
它有两个最基本的属性：
 
child：可以放入容器，图标，文字。让你构建多彩的按钮。
onPressed：点击事件的响应，理解为需要传入函数进行执行，一般会调用Navigator组件。
onPressed: (){},增加点击事件,参数是匿名函数
 
Navigator.push 和 Navigator.pop
Navigator.push：是跳转到下一个页面，它要接受两个参数一个是上下文context，另一个是要跳转的函数。
Navigator.push(context, route)
 
 
 
 
Navigator.pop：是返回到上一个页面，使用时传递一个context（上下文）参数，使用时要注意的是，你必须是有上级页面的，也就是说上级页面使用了Navigator.push。
Navigator.pop(context)
使用这两个做的导航，第一个视图点击到第二个视图，第一视图没有消失，是被覆盖了
 
 
MaterialPageRoute() 路由组件,
build 参数是匿名函数，build:(context){return }
注传入匿名函数，要做返回值，有以下两种写法
builder: (context){return SecondView();} //传入的是匿名函数
builder:(context)=>SecondView()
 
 
 
按钮点击进入
 onPressed: (){
                  //Navigator.push(context, route)
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>SecondView()
                  ));
                },
 
按钮点击返回
 
onPressed: (){
            //Navigator.pop(context),返回上一级视图，
            Navigator.pop(context);
          },
 */