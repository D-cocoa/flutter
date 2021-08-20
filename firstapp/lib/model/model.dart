import 'package:dio/dio.dart';
class Model{
  get(String id) {}
  /*
   * 登录方法
   */
  // 带参数的方法
  // dynamic get(String id)async{
  //   return await Dio().get('http://www.google.cn',
  //   queryParameters:{
  //     'id':id, 
  //   } );
  }
   dynamic get(String id)async{
    return await Dio().get('http://www.google.cn' );
  }
