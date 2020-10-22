
import 'package:dio/dio.dart';

import 'config.dart';


class HttpRequest{

  static final BaseOptions baseOptions = BaseOptions(baseUrl: HttpConfig.baseURL,
  connectTimeout: HttpConfig.timeout
  );
  static final Dio dio = Dio();

  static Future<T> request<T>(String url,
      {String method = 'get',
       Map<String,dynamic> params,
        Interceptor interceptor
      }) async{
    final option = Options(method: method);
    //全局拦截器
    Interceptor dInterceptor = InterceptorsWrapper(
      onRequest: (option){
        return option;
      },
      onResponse: (response){
        return response;
      },
      onError: (err){
        return err;
      }
    );
    List<Interceptor> interceptors = [dInterceptor];
    //传入的拦截器
    if(interceptor != null){
      interceptors.add(interceptor);
    }
    //统一添加到拦截器中
    dio.interceptors.addAll(interceptors);
    
    try{
      Response response = await dio.request(url,queryParameters: params,options: option);
      return response.data;
    }on DioError catch(e){
      return Future.error(e);
    }
  }
}