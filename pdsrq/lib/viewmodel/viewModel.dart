import 'package:flutter/cupertino.dart';
import '../model/model.dart';
import 'package:flutter/material.dart';

class ViewModel extends ChangeNotifier{
  Model _model = Model();
  void get (String id)async{
    var result = await _model.get(id);
    print(result);
  }

}