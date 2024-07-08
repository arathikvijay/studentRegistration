
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:studentregistration/model.dart';

Future <void> storingDataToBool(bool isloggedin)async{
  final SharedPreferences prefs=await SharedPreferences.getInstance();
  prefs.setBool("isloggedin", isloggedin); 

}
Future<bool> gettingDataBool() async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
   bool? data = prefs.getBool("isloggedin");
  if(data == null)
  {
    data=false;
  }
  return data;
}
/*Future<void> studentTask(List<studReg> students) async {
  final prefs = await SharedPreferences.getInstance();
  List<String> jsonStringList = students.map((student) => jsonEncode(student.toJson())).toList();
  await prefs.setStringList('studentTask', jsonStringList);
}*/
Future <void> studentTask(studReg student)async{
final prefs=await SharedPreferences.getInstance();
String jsonString=jsonEncode(student.toJson());
print(jsonString);
await prefs.setString('studentTask',jsonString);
}
Future <studReg?>getStudent()async{
  final prefs=await SharedPreferences.getInstance();
  String? jsonString=prefs.getString('studentTask');
  if(jsonString !=null){
    Map<String,dynamic>jsonMap=jsonDecode(jsonString);
    return studReg.fromJson(jsonMap);

  }
  return null;
}