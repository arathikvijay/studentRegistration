import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:studentregistration/List.dart';

class registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<registration> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(child: Text("")) ,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        //Center(child: Text("WELCOME",style: TextStyle(fontSize: 40,color: Colors.red),))
        ElevatedButton(onPressed: ()async{
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const listview(),));

        }, child:  Text("View Students"))
        ],
       
      ),
      
    );
  }
}