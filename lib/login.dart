import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:studentregistration/function.dart';
import 'package:studentregistration/registration.dart';
import 'package:studentregistration/signup.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<login> {
  @override
  Widget build(BuildContext context) {
    String harcodedUsername="user";
    String harcodedPassword="password";
    final TextEditingController usernameControler=TextEditingController();
    final TextEditingController passwordController=TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,

        ),
        body: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTENCB2SdlGnTGn0mtdeystBSQAjJA8wMXeaQ&s"),
            ),
            Padding(
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
            child: TextField(
              controller: usernameControler,
              decoration: InputDecoration(
                hintText: "Username",
                border:OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding:EdgeInsets.all(8.0),
            child: MaterialButton(
              color: Colors.blue,
              
              onPressed:()async{
                if(harcodedUsername==usernameControler.text && harcodedPassword==passwordController.text){
                  await storingDataToBool(true);
                  // ignore: use_build_context_synchronously
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Signup(),));
                  
                 // print("Loged in Success");
                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(duration: Duration(seconds: 3),
                  content: Row(
                    children:const [
                      Icon(Icons.warning),
                    Text("Invalid Credentials !"),
                    ],
                  ),),);
                }
               // await storingDataToPref();
               // await retreavingString();
               // await DeletingString();
                //await retrievingData();
           // print(storingDataToPref);
                //await retrievingData();
                //print(retrievingData);
                
                //await Future.delayed(Duration(seconds: 2));
                //Navigator.push(context, MaterialPageRoute(builder: (context) =>Home(),));

              },
              child: Text("Login",
              style: TextStyle(color: Colors.white),),
               ),
          ),
   
        
          
            

          ],
          ),
    );
  }
 
}