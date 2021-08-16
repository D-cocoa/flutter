import 'package:flutter/material.dart';
class register extends StatelessWidget {
  const register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('第一步-注册页面'),
        ),
        body:Center(
          child: Row(
            children: [
              Expanded(
                child:  Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                height: 50,
                color: Colors.green,
                child:ElevatedButton(onPressed: (){
              //替换路由，直接返回到根页面--看具体需求
              Navigator.pushReplacementNamed(context, '/phoneRegister');
           // Navigator.pushNamed(context, '/phoneRegister');
          },   
            style: ButtonStyle(

          ),child: Text('下一步'),
          ) ,
           )
               )
                ],
          )
            
           
            

          )
        
      
    );
  }
}