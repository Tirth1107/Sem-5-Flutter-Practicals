import 'package:flutter/material.dart';
class p1 extends StatefulWidget {
  const p1({super.key});

  @override
  State<p1> createState() => _p1State();
}

class _p1State extends State<p1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practical 15"),
        bottom: TabBar(
          tabs: [Tab(icon: Icon(Icons.home),text: "Home"),
          Tab(icon: Icon(Icons.info_rounded),text: "About"),
          Tab(icon: Icon(Icons.telegram),text: "Contact")
          ]
        ),
      ),
      body: TabBarView(children: [
        Card(
        child:Text("Home"),),
        Card(
        child:Text("About"),),
        Card(
        child:Text("Contact"),)
      ],
      )
    );
  }
}