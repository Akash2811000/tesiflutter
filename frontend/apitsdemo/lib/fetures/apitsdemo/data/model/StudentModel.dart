import 'dart:convert';
/// _id : "62ebe7ca1fc9ef304beee12e"
/// EmpId : 1
/// FirstName : "hello"
/// LastName : "world"
/// Assignments : [{"AssignmentId":1,"AssignmentCategory":"Node","AssignmentName":"Customer Rest Api","AssignmentStatus":"Completed"},{"AssignmentId":2,"AssignmentCategory":"Node","AssignmentName":"Emplyees Rest Api","AssignmentStatus":"Pending"}]

StudentModel studentModelFromJson(String str) => StudentModel.fromJson(json.decode(str));
String studentModelToJson(StudentModel data) => json.encode(data.toJson());
class StudentModel {
  StudentModel({
      this.id, 
      this.empId, 
      this.firstName, 
      this.lastName, 
      this.assignments,});

  StudentModel.fromJson(dynamic json) {
    id = json['_id'];
    empId = json['EmpId'];
    firstName = json['FirstName'];
    lastName = json['LastName'];
    if (json['Assignments'] != null) {
      assignments = [];
      json['Assignments'].forEach((v) {
        assignments?.add(Assignments.fromJson(v));
      });
    }
  }
  String? id;
  num? empId;
  String? firstName;
  String? lastName;
  List<Assignments>? assignments;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['EmpId'] = empId;
    map['FirstName'] = firstName;
    map['LastName'] = lastName;
    if (assignments != null) {
      map['Assignments'] = assignments?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// AssignmentId : 1
/// AssignmentCategory : "Node"
/// AssignmentName : "Customer Rest Api"
/// AssignmentStatus : "Completed"

Assignments assignmentsFromJson(String str) => Assignments.fromJson(json.decode(str));
String assignmentsToJson(Assignments data) => json.encode(data.toJson());
class Assignments {
  Assignments({
      this.assignmentId, 
      this.assignmentCategory, 
      this.assignmentName, 
      this.assignmentStatus,});

  Assignments.fromJson(dynamic json) {
    assignmentId = json['AssignmentId'];
    assignmentCategory = json['AssignmentCategory'];
    assignmentName = json['AssignmentName'];
    assignmentStatus = json['AssignmentStatus'];
  }
  num? assignmentId;
  String? assignmentCategory;
  String? assignmentName;
  String? assignmentStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['AssignmentId'] = assignmentId;
    map['AssignmentCategory'] = assignmentCategory;
    map['AssignmentName'] = assignmentName;
    map['AssignmentStatus'] = assignmentStatus;
    return map;
  }

}