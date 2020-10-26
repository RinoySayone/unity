import 'package:flutter/material.dart';
import 'package:unity123/Model/Employees.dart';
/*
 * class Employhistory
 * this stateless widget have contan a List<DataEmp> variable fro build the widget with data
 * this widget have one listview builder for showing the list of all employees 
 */
// ignore: must_be_immutable
class Employhistory extends StatelessWidget {
  List<DataEmp> empList = [];
  Employhistory(List<DataEmp> empList) {
    this.empList = empList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: empList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: Icon(Icons.person),
                trailing: Text(
                  "${empList[index].employeeSalary}",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text("${empList[index].employeeName}"));
          }),
    );
  }
}
