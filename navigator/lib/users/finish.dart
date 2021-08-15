import 'package:flutter/material.dart';
import 'package:navigator/tabs/tabs.dart';
class finish extends StatelessWidget {
  const finish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('第三步-完成'),
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
            
              Navigator.of(context).pop();
           
          },   
            style: ButtonStyle(

          ),child: Text('完成'),
          ) ,
           )
               )
                ],
          )
      ),
    );
  }
}