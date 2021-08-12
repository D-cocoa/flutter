import 'package:flutter/material.dart';

class thirdPage extends StatefulWidget {
  const thirdPage({ Key? key }) : super(key: key);

  @override
  _thirdPageState createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
       Row(
         children: [
           Expanded(
             child:Container(
               margin: EdgeInsets.all(20),
             child: ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/login');
            },
           child: Text('登录'),
             ),
           )
           ),
           ],
       ),
       Row(
         children: [
           Expanded(
             child:Container(
               margin: EdgeInsets.all(20),
             child: OutlinedButton(
            onPressed: (){
               Navigator.pushReplacementNamed(context, '/register');
            },
           child: Text('注册'),
             ),
           )
           ),
           ],
       ),
       
      ],
    );
    
  }
}