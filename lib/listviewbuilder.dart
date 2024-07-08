//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:studentregistration/function.dart';
import 'package:studentregistration/model.dart';

class display extends StatefulWidget {
  const display({super.key});

  @override
  State<display> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<display> {
  studReg? student;
  @override
  void initState(){
    super.initState();
    _stdu();
  }
  Future <void> _stdu()async{
  studReg? savedStuent=await getStudent();
  setState((){
    student=savedStuent;
  });
}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Student Details")),
      ),
      body:student ==null
      ? const Center(child: Text("No data Availalable"))
      :Padding(
        padding:EdgeInsets.all(10) ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.school,size: 50,),
              title: Text("Name:${student!.name}",style: TextStyle(fontSize: 20),),
              subtitle:Text("Email:${student!.email}",style: TextStyle(fontSize: 20),) ,
              trailing: Text("Mobile:${student!.mobile}",style: TextStyle(fontSize: 20),),
            ),
            
            
           /* Text("Name:${student!.name}"),
            Text("Email:${student!.email}"),
            Text("MobileNumber:${student!.mobile}"),*/
          ],
        ),)
    );
  }
}