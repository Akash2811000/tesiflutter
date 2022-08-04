import 'package:apitsdemo/core/error/failure.dart';
import 'package:apitsdemo/core/usecase/usecase.dart';
import 'package:apitsdemo/fetures/apitsdemo/data/model/StudentModel.dart';
import 'package:apitsdemo/fetures/apitsdemo/domain/repository/studentlist_repo.dart';
import 'package:dartz/dartz.dart';

class StudentListUsecase implements UseCase<List<StudentModel> , NoParams>{
  final StudentListRepo studentListRepo;

  StudentListUsecase(this.studentListRepo);
  @override
  Future<Either<Failure, List<StudentModel>>> call(NoParams params) async {
    return await studentListRepo.getStudentList();
  }

}