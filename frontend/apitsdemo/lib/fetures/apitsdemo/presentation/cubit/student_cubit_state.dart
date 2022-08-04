import 'package:apitsdemo/fetures/apitsdemo/data/model/StudentModel.dart';

abstract class StddataState {}

class StddataInitial extends StddataState {}
class StddataSucess extends StddataState {
  final List<StudentModel> studenlist;

  StddataSucess(this.studenlist);
}
class StddataFail extends StddataState {}
class StddataLoading extends StddataState {}