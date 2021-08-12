import 'package:flutter/material.dart';
class phoneRegister extends StatelessWidget {
  const phoneRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('第二步-手机验证'),
        ),
        body:Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Container(
            width: 80,
            height: 50,
            color: Colors.green,
            child:ElevatedButton(onPressed: (){
              Navigator.pushReplacementNamed(context, '/finish');
            // Navigator.pushNamed(context, '/finish');
          }, style: ButtonStyle(

          ),child: Text('下一步'),
          ) ,
           ) ,
            ],

          ),
        ),
      ),
    );
  
  }
}