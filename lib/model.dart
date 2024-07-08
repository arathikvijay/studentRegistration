class studReg{
  String name;
  String email;
  String password;
  String mobile;
  studReg(this.name,this.email,this.password,this.mobile);
   Map<String, dynamic> toJson(){
return{
  "name":name,
  "email":email,
  "password":password,
  "mobile":mobile,
  
};
  }
    factory studReg.fromJson(Map<String,dynamic>json)
  {
    return studReg(
      json['name'],
      json['email'],
      json['password'],
      json['mobile'],


    );
      
  }
  
} 
 