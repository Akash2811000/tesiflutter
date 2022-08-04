import 'package:apitsdemo/core/usecase/usecase.dart';
import 'package:apitsdemo/fetures/apitsdemo/domain/usecase/student_list_usecase.dart';
import 'package:apitsdemo/fetures/apitsdemo/presentation/cubit/student_cubit_state.dart';
import 'package:bloc/bloc.dart';

class StudentListCubit extends Cubit<StddataState>{
  StudentListCubit(this.studentListUsecase) : super(StddataInitial());

  final StudentListUsecase studentListUsecase;

  getAllStudent() async {
    var res = await studentListUsecase.call(NoParams());
    res.fold((l) => emit(StddataFail()), (r) =>  emit(StddataSucess(r)));
  }

}