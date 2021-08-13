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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,// 间距相等
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          flex: 1,
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
          flex: 2,
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
          flex: 1,
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
     
    );
}
}