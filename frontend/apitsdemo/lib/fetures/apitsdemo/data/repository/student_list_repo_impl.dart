import 'package:apitsdemo/core/error/failure.dart';
import 'package:apitsdemo/fetures/apitsdemo/data/datasource/tsapi_datasource_impl.dart';
import 'package:apitsdemo/fetures/apitsdemo/data/model/StudentModel.dart';
import 'package:apitsdemo/fetures/apitsdemo/domain/repository/studentlist_repo.dart';
import 'package:dartz/dartz.dart';

class StudentListRepoImpl implements StudentListRepo{
  final StudentDataSourcce studentDataSourcce;

  StudentListRepoImpl(this.studentDataSourcce);
  @override
  Future<Either<Failure, List<StudentModel>>> getStudentList() async {
    return await studentDataSourcce.getAllStudent();
  }

}