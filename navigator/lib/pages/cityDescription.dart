import 'package:flutter/material.dart';
class CityDescription extends StatefulWidget {
   final String cityName;
  const CityDescription(this.cityName,{ Key? key }) : super(key: key);

  @override
  _CityDescriptionState createState() => _CityDescriptionState();
}

class _CityDescriptionState extends State<CityDescription> with AutomaticKeepAliveClientMixin{
late ScrollController _controller;
late bool showBtn = false;
@override
 void initState() {
   // TODO: implement initState
   super.initState();
   _controller = ScrollController();
    _controller.addListener(() {
      print('offset is -----${_controller.offset}');
      if (_controller.offset > 280 && showBtn == false) {
        setState(() {
          showBtn = true;
        });
      }else if (_controller.offset <= 280 && showBtn == true) {
        setState(() {
          showBtn = false;
        });
      }

    });
  }
  
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: showBtn ? FloatingActionButton(
        child: Icon(Icons.vertical_align_top),
        onPressed: (){
       //返回最顶部
       _controller.animateTo(0, duration: Duration(milliseconds: 500), curve:Curves.easeIn);


      }):null,
      body: ListView.builder(
            controller: _controller,
            itemCount: 20,
            itemBuilder: (BuildContext context, int index){
            return ListTile(
              title: Text(widget.cityName),
              subtitle: Text('第$index条数据'),
            );
            }),
    );
      
      
    
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
/*
cityName.map((e){
           return ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index){
            return ListTile(
              title: Text(e+ '$index'),
              subtitle: Text('第$index条数据'),
            );
            }); }
            ).toList()
             
            */