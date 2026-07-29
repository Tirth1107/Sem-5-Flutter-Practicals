import 'dart:math';

import 'package:flutter/material.dart';

class p1 extends StatefulWidget {
  p1({super.key});
  

  @override
  State<p1> createState() => _p1State();
}

class _p1State extends State<p1> {
  List<dynamic> num = [1,2,3,4,5,6,7,8,9,10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
        centerTitle: true,
      ),
      body: Expanded(child: ListView(children: num.map((e) {
        return ListTile(
          leading: Icon(Icons.fiber_manual_record,color: Colors.blue,),
          title: Text(e.toString()),
        );
      },).toList()
      )
      )
    );
  }
}
