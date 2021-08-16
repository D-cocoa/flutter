import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'widgets Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'My Home Page'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  bool _selected = true;
  int _radio = 1;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: _showAlert,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body:Center(
        child: Column(
          children: [
            Checkbox(value: _selected, onChanged: ( bool? a){
                 setState(() {
                   _selected =a!;
                   print(a);
                 });

            }),
             CheckboxListTile(value: _selected, onChanged: (bool? a){
               setState(() {
                   _selected =a!;
                   print(a);
                 });
             },
             title: Text('主标题'),subtitle: Text('副标题'),),
            Row(

              children: [
                GestureDetector(
                  onTap: (){

                       setState(() {
                         _radio = 1;
                       });
                         print('我是tap1方法');
                  },
                  child: Row(
                    children: [
                  Radio(value: 1, groupValue: _radio, onChanged: (int? aa){
            
             setState(() {
               _radio = aa!;
               print('我是radio1方法');
             });
           }),
           Text('男'),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                       setState(() {
                         _radio = 2;
                       });
                       print('我是tap2方法');
                  },
                  child: Row(
                    children: [
                  Radio(value: 2, groupValue: _radio, onChanged: (int? aa){
             setState(() {
               _radio = aa!;
               print('我是radio2方法');
             });
           }),
           Text('女'),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                        setState(() {
                         _radio = 3;
                       });
                       print('我是tap3方法');
                  },
                  child: Row(
                    children: [
                  Radio(value: 3, groupValue: _radio, onChanged: (int? aa){
            
             setState(() {
               _radio = aa!;
               print('我是radio3方法');
             });
           }),
           Text('未知'),
                    ],
                  ),
                ),
          ],
        ),
        //线性进度条
        LinearProgressIndicator(
          value: 0.5,
          color: Colors.red,
          backgroundColor:  Colors.black,
          minHeight: 10,
          valueColor: AlwaysStoppedAnimation(Colors.yellow),
        ),
        SizedBox(height: 20),
        //自定义大小外层加container
        CircularProgressIndicator(
          value: 0.3,
          strokeWidth: 60,
          valueColor: AlwaysStoppedAnimation(Colors.yellow),


        )
        ]
      ),
 ));
}







_showAlert(){ 
  showDialog (context: context, builder:(BuildContext context){
    return AlertDialog(
            title: Row(children: [Text('危险')],mainAxisAlignment: MainAxisAlignment.center),

            content: Text('您不小心打开了丘比特魔盒，必须从以下三个选项中选择一个,否则您将受到丘比特之神的诅咒！'),
            actions: [
              ElevatedButton(onPressed: (){
              }, child: Text('亲亲1小时',style:TextStyle(fontSize: 10),)),
              ElevatedButton(onPressed: (){
              }, child: Text('滚床单1小时',style:TextStyle(fontSize: 12))),
              ElevatedButton(onPressed: (){
              }, child: Text('生猴子',style:TextStyle(fontSize: 10))),
            ],
          );
        });
}

}
































