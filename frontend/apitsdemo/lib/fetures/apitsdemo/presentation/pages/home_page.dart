import 'package:apitsdemo/fetures/apitsdemo/presentation/cubit/student_cubit.dart';
import 'package:apitsdemo/fetures/apitsdemo/presentation/cubit/student_cubit_state.dart';
import 'package:apitsdemo/fetures/apitsdemo/presentation/pages/studentlist_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentListCubit, StddataState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: Text("App Name"),
            ),
            body: BlocBuilder<StudentListCubit,StddataState>(
              builder: (context, state) {
                if(state is StddataSucess){
                  return StudentList(studentlist: state.studenlist);
                }
                return CircularProgressIndicator();
              },
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              backgroundColor: Colors.blue,
              onPressed: () {

              },
            )
        );
      },
    );
  }
}
