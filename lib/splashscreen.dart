import 'package:flutter/material.dart';
import 'package:studentregistration/function.dart';
import 'package:studentregistration/login.dart';
import 'package:studentregistration/registration.dart';

class StudentReg extends StatefulWidget {
  const StudentReg({super.key});

  @override
  State<StudentReg> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<StudentReg> {
  @override
  void initState(){
    super.initState();
    print("init state Initialized");
     navigateToNextScreen();
  }
  void navigateToNextScreen() async{
    await Future.delayed(Duration(seconds: 2));
    final bool isloggedin=await gettingDataBool();
    if(isloggedin){
      Navigator.push(context, MaterialPageRoute(builder:(context) => const registration(),));
    }else{
      Navigator.push(context,MaterialPageRoute(builder: (context)=>login(),));
    }
    
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image.network("https://png.pngtree.com/thumb_back/fw800/background/20231007/pngtree-back-to-school-stationery-set-isolated-on-white-background-3d-render-image_13560057.png")
        ],
      ),
    );
  }
}