import 'package:apitsdemo/fetures/apitsdemo/data/datasource/tsapi_datasource_impl.dart';
import 'package:apitsdemo/fetures/apitsdemo/data/repository/student_list_repo_impl.dart';
import 'package:apitsdemo/fetures/apitsdemo/domain/repository/studentlist_repo.dart';
import 'package:apitsdemo/fetures/apitsdemo/domain/usecase/student_list_usecase.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'presentation/cubit/student_cubit.dart';

var sl = GetIt.instance;

Future<void> init() async{

  sl.registerFactory(() => StudentListCubit(sl()));

  sl.registerLazySingleton<StudentDataSourcce>(() => StudentDataSourceImpl(sl()));
  sl.registerLazySingleton<StudentListRepo>(() => StudentListRepoImpl(sl()));

  sl.registerLazySingleton(() => StudentListUsecase(sl()));

  sl.registerLazySingleton(() => Dio());


}