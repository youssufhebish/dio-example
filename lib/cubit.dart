
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/dio.dart';
import 'package:untitled/url_end_points.dart';

abstract class DioState{}

class DioInitial extends DioState{}

class DioLoading extends DioState{}

class DioSuccess extends DioState{}

class DioError extends DioState{}

class DioCubit extends Cubit<DioState>{

  DioCubit() : super(DioInitial());

  static DioCubit get(context) => BlocProvider.of(context);

  //الداتا بتيجي من ال api في شكل List<dynamic> عشان كده عرفت ليست بالشكل ده أو ممكن أخليها var أحسن بس كده أحسن كتير
  List<dynamic> list = [];

  void dioGet(){
    emit(DioLoading());
    
    DioHelper.getData(url: headlineUrl, query: {
      'country' : 'eg',
      'category' : 'business',
      'apiKey' : '7c03327d3f8f400ab9f217febf03f604',
    }).then((value) {
      // بصي تحت خالص بعد الكود هفهمك ده ليه
      list = value.data['articles'];
      print(list[0]);
      emit(DioSuccess());
    }).catchError((e){
      print(e);
      emit(DioError());
    });
  }
}

/*
{"status":"ok","totalResults":19,"articles":[{"source":{"id":"google-news","name":"Google News"},"author":null,"title":"يترقب عودة البورصة .. سعر الذهب اليوم في مصر وعالميًا صباح الأحد 21-11-2021 - المصري اليوم","description":null,"url":"https://news.google.com/__i/rss/rd/articles/CBMiMmh0dHBzOi8vd3d3LmFsbWFzcnlhbHlvdW0uY29tL25ld3MvZGV0YWlscy8yNDY2ODgz0gE1aHR0cHM6Ly93d3cuYWxtYXNyeWFseW91bS5jb20vbmV3cy9kZXRhaWxzYW1wLzI0NjY4ODM?oc=5","urlToImage":null,"publishedAt":"2021-11-21T07:14:43Z","content":null},{"source":{"id":"google-news","name":"Google News"},"author":null,"title":"آحدث تسريبات iPhone 14.. أبل تُجهّز مفاجأة لمستخدميها وتخضع للمطلب الذي طال انتظاره - نجوم

"articles":[{"source":

لو خدتي بالك ف ال body بتاع ال api باعت الحاجة ف ليست مسميها articles
عشان كده جبتها بالشكل ده
list = value.data['articles'];
 */