import 'package:flutter/material.dart';
import 'package:sem5practicals/lab%2016/page2.dart';
class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => page2(),)), child: Text("Go to other page")),
    );
  }
}
