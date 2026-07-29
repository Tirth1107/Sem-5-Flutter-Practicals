import 'package:flutter/material.dart';

class p2 extends StatefulWidget {
  const p2({super.key});

  @override
  State<p2> createState() => _p2State();
}

class _p2State extends State<p2> {
  List<dynamic> num = [1,2,3,4,5,6,7,8,9,10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo 2"),
        centerTitle: true,
      ),
      body: ListView.builder
        (
        itemCount:num.length,
        itemBuilder: (context, index) {
          return ListTile(
              leading: CircleAvatar(backgroundColor: Colors.blue,child: Text((index+1).toString()),),
              title: Text(num[index].toString()),
          );
      },
      )
    );
  }
}
