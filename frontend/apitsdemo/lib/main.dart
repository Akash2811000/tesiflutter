import 'package:apitsdemo/fetures/apitsdemo/injection_container.dart';
import 'package:apitsdemo/fetures/apitsdemo/presentation/cubit/student_cubit.dart';
import 'package:apitsdemo/fetures/apitsdemo/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './fetures/apitsdemo/injection_container.dart' as di;

void main() async {
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
        home: BlocProvider(
          create: (context) => sl<StudentListCubit>(),
          child: MyHomePage(),
        ),
    );
  }
}

