import 'package:flutter/material.dart';
import 'package:unity123/Controller/EmployeeController.dart';
import 'package:unity123/Widget/EmployeesVC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Dashboard'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              //here we can make a route from here
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EmployeesVC(title: 'Employees')),
              );
            },
            child: Container(
              height: 150,
              width: 150,
              color: Colors.orange[100],
              child: Center(child: Text("Employees")),
            ),
          ),
        ));
  }
}
