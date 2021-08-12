import 'package:flutter/material.dart';
class setting extends StatefulWidget {
  const setting({ Key? key }) : super(key: key);

  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(55, 150, 130, 1),
       child:Text('设置') ,
    );
  }
}