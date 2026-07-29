import 'package:flutter/material.dart';

class P2 extends StatelessWidget {
  const P2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,title: Text("Tirth Joshi")),
      body: Row(
        children: [
          Expanded(child: Container(color: Colors.red)),
          Expanded(child: Container(color: Colors.blue)),
          Expanded(child: Container(color: Colors.green))
        ],
      ),
    );
  }
}
