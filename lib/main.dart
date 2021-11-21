import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit.dart';
import 'package:untitled/dio.dart';
import 'package:untitled/home.dart';

void main() {

  //لازم نشغل dio أول ما الأبلكيشن يشتغل
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      //لازم اشغل الميثود اللي هتجيب الداتا من ال api ف أول التطبيق عشان تقرأ لما نفتح
      create: (context) => DioCubit()..dioGet(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
