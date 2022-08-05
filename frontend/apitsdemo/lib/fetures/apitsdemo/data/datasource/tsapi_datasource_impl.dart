import 'package:apitsdemo/core/error/failure.dart';
import 'package:apitsdemo/fetures/apitsdemo/data/model/StudentModel.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class StudentDataSourcce {
  Future<Either<Failure, List<StudentModel>>> getAllStudent();
}

class StudentDataSourceImpl implements StudentDataSourcce {
  final Dio dio;

  StudentDataSourceImpl(this.dio);

  @override
  Future<Either<Failure, List<StudentModel>>> getAllStudent() async {
    try {
      final baseurl = 'https://862e-103-250-145-149.in.ngrok.io/student';
      print(baseurl);
      final response = await dio.get(baseurl);
      if (response.statusCode == 200) {
        final List<StudentModel> studentlist = [];
        final jsonList = response.data;
        for (var item in jsonList) {
          studentlist.add(StudentModel.fromJson(item));
        }
        return right(studentlist);
      } else if (response.statusCode == 505) {
        return Left(ServerFailure());
      } else {
        return Left(ServerFailure());
      }
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
