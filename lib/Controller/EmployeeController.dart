/*
 * this is the class where we manage the Employees list page 
 * This is singleon class then we can simply manage the class by single instance
 * */
import 'package:flutter/material.dart';
import 'package:unity123/Controller/ApiManager.dart';
import 'package:unity123/Model/Employees.dart';
/*
 * EmployeeController
 * This is the main controller of the Employee listing page
 * here the place we can call the api and functionalities related on Employee List
 */

class EmployeeController {
  static final EmployeeController _singleton =
      new EmployeeController._internal();
/*
 * when ValueNotiier receive a value from the event it will change.
 * Build the entire component based on the builder (ValueListenableBuilder)
 */
  ValueNotifier<List<DataEmp>> employsData = ValueNotifier<List<DataEmp>>(null);

  factory EmployeeController() {
    return _singleton;
  }

  EmployeeController._internal();

/*
 * getEmployeeslist() 
 * This is a async function 
 * the api call only possible through  Httpmanager.
 * after cal the funton the api need to call and that give response back from Httpmanager .
 * in here only we encode the jsonString to specified model
 */
  void getEmployeeslist() async {
    HttpManager httpManager = HttpManager();
    httpManager.getEmployeesDetail().then((response) {
      print(response);
      try {
        employsData.value = employeesFromJson(response.body).data;
      } catch (error) {
        print("error: $error");
      }
    });
  }
}
