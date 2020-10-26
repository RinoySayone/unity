import 'dart:convert';
/*
 *  decord to Employye from json
 */
Employees employeesFromJson(String str) => Employees.fromJson(json.decode(str));
/*
 * encord to json from data 
*/
String employeesToJson(Employees data) => json.encode(data.toJson());
/*
 * Employees model class 
 */
class Employees {
  Employees({
    this.status,
    this.data,
  });

  String status;
  List<DataEmp> data;

  factory Employees.fromJson(Map<String, dynamic> json) => Employees(
        status: json["status"],
        data: List<DataEmp>.from(json["data"].map((x) => DataEmp.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}
/*
 *  class DataEmp
 *  it contain each employee detail
 */
class DataEmp {
  DataEmp({
    this.id,
    this.employeeName,
    this.employeeSalary,
    this.employeeAge,
    this.profileImage,
  });

  int id;
  String employeeName;
  int employeeSalary;
  int employeeAge;
  String profileImage;

  factory DataEmp.fromJson(Map<String, dynamic> json) => DataEmp(
        id: json["id"],
        employeeName: json["employee_name"],
        employeeSalary: json["employee_salary"],
        employeeAge: json["employee_age"],
        profileImage: json["profile_image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "employee_name": employeeName,
        "employee_salary": employeeSalary,
        "employee_age": employeeAge,
        "profile_image": profileImage,
      };
}
