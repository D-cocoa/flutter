import 'package:flutter/material.dart';
import 'package:navigator/tabs/tabs.dart';
class finish extends StatelessWidget {
  const finish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('第三步-完成'),
        ),
        body:Center(
          child: Column(
            children: [
              Container(
            width: 80,
            height: 50,
            color: Colors.green,
            child:ElevatedButton(onPressed: (){
              Navigator.of(context).pop();
             /*
             //此种写法直接重新初始化tab，不友好
             Navigator.of(context).pushAndRemoveUntil(build(context)=>tabs(index: 1), (route) => route== null);
          */
          }, style: ButtonStyle(

          ),child: Text('完成'),
          ) ,
           ) ,
            ],

          ),
        ),
      ),
    );
  }
}