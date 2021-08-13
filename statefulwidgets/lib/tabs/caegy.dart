import 'package:flutter/material.dart';
class caegy extends StatefulWidget {
  const caegy({ Key? key }) : super(key: key);

  @override
  _caegyState createState() => _caegyState();
}

class _caegyState extends State<caegy> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(100, 10, 30, 1),
      child: Text('分类'),
    );
  }
}