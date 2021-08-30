import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
           decoration: BoxDecoration(
            image: DecorationImage(
                  image: ExactAssetImage('images/bgimage.jpg'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fill,
                ),
           
            ),
          child:Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Image.network('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201104%2F16%2F2136492e16kpc6oqcz1rie.jpg&refer=http%3A%2F%2Fattach.bbs.miui.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1632889885&t=f85a2dba03f02b89bb95ccd55d4bdb74',
            width: double.infinity,
            fit: BoxFit.fill,),
            SizedBox(height: 20,),
            TextField(
              textInputAction: TextInputAction.next,
              
              decoration: InputDecoration(
                labelText: '账号',
                suffixIcon: IconButton(
                onPressed: (){
                  
                }, 
                icon: Icon(Icons.close)
                )
                
              ),
              
            ),
            TextField(
              textInputAction: TextInputAction.send,
              obscureText: true,
              decoration: InputDecoration(
                labelText: '密码'
              ),

            
            ) ])

    )
    )
    );
  
}
}