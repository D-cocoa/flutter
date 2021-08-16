import 'package:flutter/material.dart';
class CityDescription extends StatefulWidget {
   final String cityName;
  const CityDescription(this.cityName,{ Key? key }) : super(key: key);

  @override
  _CityDescriptionState createState() => _CityDescriptionState();
}

class _CityDescriptionState extends State<CityDescription> with AutomaticKeepAliveClientMixin{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
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