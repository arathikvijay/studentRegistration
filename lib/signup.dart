import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:studentregistration/List.dart';
import 'package:studentregistration/function.dart';
import 'package:studentregistration/listviewbuilder.dart';
import 'package:studentregistration/login.dart';
import 'package:studentregistration/model.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    List<studReg>studentList=[];
      final TextEditingController nameController=TextEditingController();
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  final TextEditingController mobileController=TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(child: Text("Sign Up")),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                
                hintText: "name",
                border: OutlineInputBorder()
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller:emailController ,
              decoration: InputDecoration(
                hintText: "email",
                border: OutlineInputBorder()
              ),
            ),
            
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller:passwordController ,
              decoration: InputDecoration(
                hintText: "password",
                border: OutlineInputBorder()
              ),
            ),
            
            
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: mobileController,
              decoration: InputDecoration(
                hintText: "phone number",
                border: OutlineInputBorder()
              ),
            ),
            
          ),
          ElevatedButton(
             style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: ()async{
              studReg student =studReg(nameController.text,emailController.text,passwordController.text,mobileController.text);
              //studentTask(student as List<studReg>);
              studentTask(student);
                setState(() {
              nameController.clear();
              passwordController.clear();
              emailController.clear();
              mobileController.clear();
            });
            //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const display() ));
      
          },
           child: Text("Sign Up",style:TextStyle(color: Colors.white),),),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const display() )); 
              }, child: const Text("View Students",style:TextStyle(color: Colors.white))),
           )
      
        ],
      )

    );
  }
}