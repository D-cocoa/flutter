import 'package:flutter/material.dart';
import '../tabs/arguments.dart';

class infoSet extends StatefulWidget {
 objectArguments? arguments;
   infoSet({ Key? key,this.arguments}) : super(key: key);

  @override
  _infoSetState createState() => _infoSetState(arguments:arguments);
}

class _infoSetState extends State<infoSet> {
   objectArguments? arguments;
   _infoSetState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments!.title),
      ),
      body: Container(
        
      width: 500,
      height: 900,
      color: Colors.red[100],
    ),
    );
  }
}