import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DioCubit, DioState>(listener: (context, state){},
    builder: (context, state) {

      return Scaffold(
        appBar: AppBar(),
        //أنا بس عملت اسكرينة بيحمل فيها ويعرض عنوان أول مقالة
        //عايزك بقى تفهمي ال dio مشي ازاي وانا مظبطه على ال nullsafety ولو أمكن تعملي نفس المثال ده تاني لوحدك
        // وبعدين جربي ورا عبدالله من أول وجديد وأي حاجة تقف معاكي ابعتيلي

        body: Center(
          child: state is! DioSuccess
                ? const CircularProgressIndicator()
                : Text(DioCubit.get(context).list[0]['title']),
          ),
      );
    },);
  }
}
