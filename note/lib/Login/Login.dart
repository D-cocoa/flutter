import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var _accountNumber = new TextEditingController();
  var _scureText = new TextEditingController(); 
  late String _textAccount ;
  late String _textScure;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _accountNumber.dispose();
    _scureText.dispose();
  }
  @override
  // ignore: must_call_super
  void initState() {
    // TODO: implement initState
    _accountNumber.text ='';
    _scureText.text = '';
    _textAccount ='';
    _textScure='';
    
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
           decoration: BoxDecoration(
            image: DecorationImage(
                  image: ExactAssetImage('images/bg_light.jpg'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fill,
                ),
           
            ),
          child:Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset('images/head.png',width: double.infinity,fit: BoxFit.fill),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: TextField(
                  onChanged: (value){
                    setState(() {
                      _textAccount =value;
                    });
                  },
              maxLength: 11,
              controller: _accountNumber,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: '账号',
              ),
            ),),
                
                 Offstage(
              offstage: _textAccount == ''?true:false,
              child: GestureDetector(
                onTap: (){
                  setState(() {
                                            _textAccount = ''; 
                                            _accountNumber.clear(); 
                                              //清除textfield的值
                                          });
                                        },
                                        child: Container(
                                            width: 45,
                                            height: 45,
                                            child: Icon(Icons.close,color: Colors.grey,size: 17,),
                                        ),
                                                                    
                                  ),
            )
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: 
              TextField(
                onChanged: (value){
                    setState(() {
                      _textScure =value;
                    });
                  },
              maxLength: 8,
              controller: _scureText,
              textInputAction: TextInputAction.send,
              obscureText: true,
              decoration: InputDecoration(
                labelText: '密码',
              ),
            ),),
          
            Offstage(
              offstage: _textScure ==''?true:false,
              child: GestureDetector(
                onTap: (){
                  setState(() {
                                            _textScure = ''; 
                                            _scureText.clear(); 
                                              //清除textfield的值
                                          });
                                        },
                                        child: Container(
                                            width: 45,
                                            height: 45,
                                            child: Icon(Icons.close,color: Colors.grey,size: 17,),
                                        ),
                                                                    
                                  ),
            )
              ],
            ),
            Container(
              width: double.infinity,
              height: 40,
            
              child:ElevatedButton(onPressed: (){
                if (_textAccount=='110' &&_textScure=='6155') {
                  Navigator.popAndPushNamed(context, 'home');

                }else{
                    // _showLoginError();
                    _showLoginAlert();
                }
                

            }, child: Text('登录')) ,)
            
            
            
             ])

    )
    )
    );
  
}
_showLoginError(){
  showDialog(context: context, builder: (context){
    return AlertDialog(
      title: Text('账号或密码错误')
      
    );
  });
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