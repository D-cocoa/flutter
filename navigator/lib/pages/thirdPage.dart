import 'package:flutter/material.dart';


class thirdPage extends StatefulWidget {
  const thirdPage({ Key? key }) : super(key: key);

  @override
  _thirdPageState createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {

  late List personInfoMap = [];
  late Map unit;  
  late bool _selected = false;
  late int _sortColumnIndex = 0;
  late bool _sortAscending = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   personInfoMap= [
  {'name':'张  一','age':18,'sex':'女','phone':'18235687456','address':'西湖区99号'},
  {'name':'张达到','age':12,'sex':'女','phone':'18235457456','address':'滨江区49号'},
  {'name':'张  一','age':23,'sex':'男','phone':'13535687456','address':'湛河区97号'},
  {'name':'张零零','age':18,'sex':'男','phone':'12523568656','address':'东湖区9号'},
  {'name':'张三分','age':58,'sex':'女','phone':'16235689456','address':'下城区46号'},
  {'name':'李大地','age':30,'sex':'男','phone':'18235498756','address':'拱墅区49号'},
  {'name':'王  醇','age':14,'sex':'男','phone':'18475687456','address':'文一西路52号'},
  {'name':'赵林龙','age': 8,'sex':'女','phone':'19525687456','address':'古墩路区94号'},
  {'name':'马化腾','age':10,'sex':'男','phone':'17235687856','address':'天目山路79号'},
  {'name':'呼延别','age':46,'sex':'男','phone':'16235467456','address':'莫干山路区89号'},
];
     unit = personInfoMap[0];
     print('获取字典中的所有key：${unit.keys}----${unit.values}'); 
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('表格'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: DataTable(
        sortColumnIndex: _sortColumnIndex, //当前按照哪一列排序
        sortAscending: _sortAscending,     //按照升序还是降序
        columns:unit.keys.toList().map((e) => DataColumn(
          label: Text(e),
          onSort : (int columnIndex, bool ascending){
            setState(() {
              _sortColumnIndex = columnIndex;
              _sortAscending = ascending;
              personInfoMap.sort((a,b){
                if (!ascending) {
                  var c = a;
                  a =b;
                  b =c;
                }
                //需要加判断，按照什么排序
                return a[e].toString().length.compareTo(b[e].toString().length);

              });
            });

          }
        )).toList(), 
        rows: personInfoMap.map((e) => DataRow(
          selected: _selected,
          onSelectChanged: (v){
            setState(() {
              _selected = v!;
            });
            print(v);
          },
          cells: 
        [DataCell(Text(e['name'])),
        DataCell(Text(e['age'].toString())),
        DataCell(Text(e['sex'])),
        DataCell(Text(e['phone'])),
        DataCell(Text(e['address'])),
        ])).toList(),

      )
    ));
    
  }

}