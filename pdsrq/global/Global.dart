import 'package:dio/dio.dart';

class Global{
  static Global? _instance;
  late Dio dio;

  Global? getInstance(){
    if (_instance==null) {
      _instance = new Global();
    }else{
      return _instance;
    }
  }
  Global(){
    dio = new Dio();
    dio.options = BaseOptions(
      baseUrl: "https://www.baidu.com/",
      //超时设置
      connectTimeout: 5000,
      sendTimeout: 5000,
      receiveTimeout: 5000,
      //请求数据类型设置
      contentType: Headers.formUrlEncodedContentType,
      //返回数据类型设置
      responseType: ResponseType.json,
      headers: {
        'token':'123123',
      },
    );
    //每个 Dio 实例都可以添加任意多个拦截器，他们组成一个队列，
    //拦截器队列的执行顺序是FIFO。通过拦截器你可以在请求之前、响应之后
    //和发生异常时(但还没有被 then 或 catchError处理)做一些统一的预处理操作。
    dio.interceptors.add(InterceptorsWrapper(
    onRequest:(options, handler){
      print('请求'+ options.headers.toString());
      print('请求'+ options.extra.toString());
     // Do something before request is sent
     return handler.next(options); //continue
     // 如果你想完成请求并返回一些自定义数据，你可以resolve一个Response对象 `handler.resolve(response)`。
     // 这样请求将会被终止，上层then会被调用，then中返回的数据将是你的自定义response.
     //
     // 如果你想终止请求并触发一个错误,你可以返回一个`DioError`对象,如`handler.reject(error)`，
     // 这样请求将被中止并触发异常，上层catchError会被调用。
    },
    onResponse:(response,handler) {
     // Do something with response data
     print('返回'+ response.toString());
     return handler.next(response); // continue
     // 如果你想终止请求并触发一个错误,你可以 reject 一个`DioError`对象,如`handler.reject(error)`，
     // 这样请求将被中止并触发异常，上层catchError会被调用。
    },
    onError: (DioError e, handler) {
     // Do something with response error
     print('请求错误'+ e.toString());
     return  handler.next(e);//continue
     // 如果你想完成请求并返回一些自定义数据，可以resolve 一个`Response`,如`handler.resolve(response)`。
     // 这样请求将会被终止，上层then会被调用，then中返回的数据将是你的自定义response.
    }
));

    );
  }
}