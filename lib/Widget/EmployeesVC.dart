import 'package:flutter/material.dart';
import 'package:unity123/Component/EmployHistory.dart';
import 'package:unity123/Controller/EmployeeController.dart';
import 'package:unity123/Model/Employees.dart';
/*
 * EmployeesVC stateful widget for
 * make visible all the data to user using this class
 * this is the class where code build he widget 
 */
class EmployeesVC extends StatefulWidget {
  final String title;
  EmployeesVC({Key key, this.title}) : super(key: key);

  @override
  _EmployeesVCState createState() => _EmployeesVCState();
}

class _EmployeesVCState extends State<EmployeesVC> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    EmployeeController().getEmployeeslist();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        /**
         * ValueListenableBuilder 
         * one of the state management widget
         * when value notifier notifiy the value then this widget builder build the widget based on the notifier value
         */
        body: ValueListenableBuilder(
          valueListenable: EmployeeController().employsData,
          builder: (BuildContext context, List<DataEmp> data, Widget child) {
            return data != null
                ? Employhistory(data)
                : LinearProgressIndicator();
          },
        ));
  }
}
