import 'package:flutter/material.dart';
class p1 extends StatefulWidget {
  const p1({super.key});

  @override
  State<p1> createState() => _p1State();
}

class _p1State extends State<p1> {
    final _formkey = GlobalKey<FormState>();
    TextEditingController Email = TextEditingController();
    TextEditingController Pass = TextEditingController();
    String gender = "Male";
    List<String> contries = ["India","Pakistan","China","Thailand","Russia","Canada","USA"];
    String selected = "India";
    List<String> selectecontries = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,  
        child: Center(
        child: Column(
            children: [
                Text("Email :"),
                TextFormField(controller: Email,decoration: InputDecoration(border: OutlineInputBorder()),validator: (e) {
                RegExp emailreg = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
                if(e!.isEmpty){
                    return "Email Is Empty Enter Email";
                  }
                if(!emailreg.hasMatch(e!)){
                    return "Enter email only.";
                }
                return null;
                },),
                Text("Password :"),
                TextFormField(controller: Pass, obscureText: true,validator: (value){
                    RegExp pass = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                    if(value!.isEmpty){
                        return "Enter Password";
                    }
                    if(value.length<8){
                        return "Enter Long Pass";
                    }
                    if(!pass.hasMatch(value!)){
                        return "Enter Proper pass";
                    }
                    return null;
                }),
                Row(
                    children: [
                        Radio(value: "Male",groupValue: gender,onChanged: (value) {
                  setState(() {
                    gender = "Male";
                  });
                },),
                Text("Male"),
                Radio(value: "Female",groupValue: gender,onChanged: (value) {
                  setState(() {
                    gender = "Female";
                  });
                },),
                Text("Female"),
                    ],
                ),
                DropdownButtonFormField(value: selected,items: contries.map((e) {
                  return DropdownMenuItem(child: Text(e),value: e,);
                  },).toList(),
                  onChanged: (value) {
                  setState(() {
                    selected = value!;
                  });
                },),
                Column(
                  children: contries.map((e) {
                    return CheckboxListTile(value: selectecontries.contains(e), onChanged: (value) {
                      
                      if(value!){
                        setState(() {
                        selectecontries.add(e);
                        });
                      }
                      else{
                        setState(() {
                        selectecontries.remove(e);                          
                        });
                      }
                    },
                    title: Text(e),);  
                  },).toList(),
                
                ),

                ElevatedButton(onPressed: (){
                    if(_formkey.currentState!.validate()){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Success")));
                    }
                }, child: Text("Login")),
            ],
        ),
      ))
    );
  }
}
