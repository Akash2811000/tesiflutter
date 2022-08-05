import 'package:apitsdemo/fetures/apitsdemo/data/model/StudentModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentList extends StatelessWidget {
  StudentList({Key? key, required this.studentlist}) : super(key: key);

  final List<StudentModel> studentlist ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              const Color(0xFF3366FF),
              const Color(0xFF00CCFF),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: ListView.builder(
          itemCount: studentlist.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment
                                  .start,
                              children: [
                                Text(studentlist[index].empId.toString()),
                                Text(studentlist[index].firstName.toString())
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.edit)),
                          IconButton(onPressed: () {},
                              icon: Icon(Icons.delete))
                        ],

                      ),

                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
