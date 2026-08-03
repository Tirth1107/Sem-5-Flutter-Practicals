import 'package:flutter/material.dart';
class p2_pg2 extends StatelessWidget {
  Text Email,pass,gender;
  List<String> con;
  p2_pg2({super.key, required Text this.Email,
      required Text this.pass,
      required Text this.gender,
      required List<String> this.con,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(Email.toString()),
          Text(gender.toString()),
          Text(pass.toString()),
          Text(con.join(",")),
        ],
      ),
    );
  }
}
