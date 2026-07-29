import 'package:flutter/material.dart';

class p2 extends StatelessWidget {
  p2({super.key});

  List<String> n=["tirth","sujal","rudra","akshit"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(title: Text("List View.Builder"),centerTitle: true,),
        body:
        ListView.builder(
          itemCount: n.length,
          itemBuilder: (context, index) {
            return
              ListTile(
                leading:CircleAvatar(child: Text(""+(n[index][0])),),
                trailing: Icon(Icons.call),
                title: Text(n[index]),
              );
          },
        )
    );
  }
}