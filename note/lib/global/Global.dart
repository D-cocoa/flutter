
import 'package:dio/dio.dart';

class Global {
  static Global? _instance ;
  late Dio dio;

  static Global? getInstance(){

  if (_instance == null) _instance = new Global();
  return _instance;
}
 Global(){
   dio = new Dio();
   dio.options = BaseOptions(
     baseUrl: 'httpbin.org',
     connectTimeout: 5000, //连接超时
     sendTimeout: 5000,   // 发送超时
     receiveTimeout: 5000,  //接收超时
     headers: {

     },
     contentType: Headers.jsonContentType,
     responseType: ResponseType.json,

    

   );
  dio.interceptors.add(InterceptorsWrapper(
    onRequest:(options, handler){
     print('请求成功，headers结果是：'+options.headers.toString());
     print('请求成功，extra结果是：'+options.extra.toString());
    // return handler.next(options); //continue
     
    },
    onResponse:(response,handler) {
     // Do something with response data
     print('返回成功response是：'+response.toString());
     //return handler.next(response); // continue
     // If you want to reject the request with a error message,
     // you can reject a `DioError` object eg: return `dio.reject(dioError)` 
    },
    onError: (DioError e, handler) {
     // Do something with response error
     print('出现错误'+e.toString());
     //return  handler.next(e);//continue
     // If you want to resolve the request with some custom data，
     // you can resolve a `Response` object eg: return `dio.resolve(response)`.  
    }
));
 }
}