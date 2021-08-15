import 'package:flutter/material.dart';
// ignore: camel_case_types
class minePage extends StatefulWidget {
  const minePage({ Key? key }) : super(key: key);

  @override
  _minePageState createState() => _minePageState();
}

class _minePageState extends State<minePage> {
   var _accountNumber = new TextEditingController();
   var _scureText = new TextEditingController(); 
   @override
  // ignore: must_call_super
  void initState() {
    // TODO: implement initState
    _accountNumber.text ='18239796155';
    _scureText.text = '123456789';
  } 
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
        centerTitle: true,
      ),
      body:
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child:Image.network('https://gimg2.baidu.com/image_search/src=http%3A%2F%2F01.minipic.eastday.com%2F20170626%2F20170626000039_d41d8cd98f00b204e9800998ecf8427e_18.jpeg&refer=http%3A%2F%2F01.minipic.eastday.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1631619348&t=33ca61b3e07ab44355dd3940da41f78b',
         fit: BoxFit.fitWidth,
         ) 
        ),
        SizedBox(height: 10),
        Container(
          child: TextField(
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
        padding: EdgeInsets.all(10),),
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
        padding: EdgeInsets.all(10),),
       Row(
         children: [
           Expanded(
             child:Container(
              margin: EdgeInsets.only(left: 20,top: 5,right: 20,bottom: 5),
             child: ElevatedButton(
            onPressed: (){
              _showLoginAlert();
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
    ));
  }
_showLoginAlert(){
  showDialog(context: context, builder: (context){
    return AlertDialog(
      title: Text('登陆成功'),
      content: Text('您的登录账号是：${_accountNumber.text}\n密码是：\n${_scureText.text}'),
    );
  });
}
}