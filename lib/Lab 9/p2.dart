import 'package:flutter/material.dart';
import '';
class p2 extends StatefulWidget {
  const p2({super.key});

  @override
  State<p2> createState() => _p2State();
}

class _p2State extends State<p2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 400,
          child: Card(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(children: [
                  Icon(Icons.album,size: 70,color: Colors.green,),
                  Column(
                    children: [
                      Text("Music By Tirth Joshi",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                      Text("Tirth Joshi",style: TextStyle(fontSize: 12,color: Colors.grey)),
                    ],

                  ),

                ],)
              ],

              ),
          ),
        ),
      ),
    );
  }
}
