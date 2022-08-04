import 'package:apitsdemo/core/error/failure.dart';
import 'package:apitsdemo/fetures/apitsdemo/data/model/StudentModel.dart';
import 'package:dartz/dartz.dart';

abstract class StudentListRepo {
  Future<Either<Failure ,List<StudentModel>>> getStudentList();
}