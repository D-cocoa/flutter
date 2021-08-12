import 'package:flutter/material.dart';
class minePage extends StatefulWidget {
  const minePage({ Key? key }) : super(key: key);

  @override
  _minePageState createState() => _minePageState();
}

class _minePageState extends State<minePage> {
   var _accountNumber = new TextEditingController();
   var _scureText = new TextEditingController(); 
   @override
  void initState() {
    // TODO: implement initState
    _accountNumber.text ='18239796155';
    _scureText.text = '123456789';
  } 
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 50),
        Container(child: TextField(
          onChanged: (String textStr){
             //  限制账号结构
          },
          controller: _accountNumber,
          decoration: InputDecoration(
            //icon: Icon(Icons.people),
          //  hintText: '用户名或者手机号',
            border:OutlineInputBorder(),// 外边框
            labelText: '账号',
            labelStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            )
          ),
        ),
        padding: EdgeInsets.all(20),),
        Container(child: TextField(
          
          obscureText: true,
          controller: _scureText,
          onChanged: (str){
            //限制密码长度
          },
          decoration: InputDecoration(
            //icon: Icon(Icons.security),
           // hintText: '请输入密码',
            border:OutlineInputBorder(),
            labelText: '密码',
            labelStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            )
            
          ),
        ),
        padding: EdgeInsets.all(20),),
       Row(
         children: [
           Expanded(
             child:Container(
               margin: EdgeInsets.only(left: 20,top: 100,right: 20,bottom: 5),
             child: ElevatedButton(
            onPressed: (){
            print('----------${_accountNumber.text}-------${_scureText.text}');
             // Navigator.pushNamed(context, '/login');
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
              margin: EdgeInsets.only(left: 20,top: 5,right: 20,bottom: 5),
             child: ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/register');
             // Navigator.pushNamedAndRemoveUntil(context, '/register', (route) => true);
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