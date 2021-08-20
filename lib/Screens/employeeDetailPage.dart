import 'package:EmployeeApp/Model/employee_model.dart';
import 'package:flutter/material.dart';

class EmployeeDetail extends StatelessWidget {
  final Employee employee;
  const EmployeeDetail({this.employee });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(child:Column(
        children: [
          employee.profile_image==null?Text(''):SizedBox(
                  // height: MediaQuery.of(context).size.height*.50,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Image.network(employee.profile_image),
                ),
          Text(employee.name),
          employee.username==null?Text(''): Text(employee.username),
          employee.email==null?Text(''):Text(employee.email),
          employee.phone==null?Text(''):Text(employee.phone),
          employee.website==null?Text(''):Text(employee.website),
          // Text(employee.website),

          
        ],
      ))),
      
    );
  }
}