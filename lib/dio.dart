import 'package:dio/dio.dart';
import 'package:untitled/url_end_points.dart';

class DioHelper{

  static Dio? dio;

  //بتبدأي إنك تعملي init لل dio بال baseurl
  //
  static init(){
    dio = Dio(
        BaseOptions(
          baseUrl: baseUrl,
          receiveDataWhenStatusError: true,
          connectTimeout: 5000,
          receiveTimeout: 3000,
        )
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {

    //ممكن تضيفي الحاجات اللي هتبقى ثابتة ف ال query زي ال apiKey بالشكل ده
    //بس خلينا نبعتهم يدوي كل مرة عشان تبقى فاهمة الطريقتين
    //بس لو عملتيهم بالطريقة دي مش هتضفيفي الحاجات اللي اتضافت قبل كده يعني ال apiKey بيتضاف مرة واحدة بس
    // dio!.options.headers = {
    //   'apiKey' : '7c03327d3f8f400ab9f217febf03f604',
    // };

    return await dio!.get(
      //هنا url ده هحط فيه ال endpoint اللي عايز اشتغل عليها
      url,
      queryParameters: query,
    );
  }

}