import 'package:flutter/material.dart';

class thirdPage extends StatefulWidget {
  const thirdPage({ Key? key }) : super(key: key);

  @override
  _thirdPageState createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('待定'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.blueGrey,
      ),
    );
    
  }
}