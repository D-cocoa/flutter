import 'dart:js_util';

import 'package:dio/dio.dart';

class Global {
  static Global? _instance ;
  late Dio dio;

Global? getInstance(){

  if (_instance == null) _instance = new Global();
  return _instance;
}
 Global(){
   dio = new Dio();
   dio.options = BaseOptions(
     baseUrl: 'httpbin.org/',
     connectTimeout: 5000, //连接超时
     sendTimeout: 5000,   // 发送超时
     receiveTimeout: 5000,  //接收超时
     headers: {

     },
    

   );
 }
}