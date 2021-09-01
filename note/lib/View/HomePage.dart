import 'package:flutter/material.dart';
import '../global/Global.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();

  }
  void loadData() async{
     await Global.getInstance()!.dio.get('/get');

  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade100);
  }
}