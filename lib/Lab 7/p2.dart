import 'package:flutter/material.dart';
class p2 extends StatelessWidget {
  const p2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 500,
              width: 600,

              child:
              Card(
              elevation: 2,
                child:

              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black),gradient: LinearGradient(colors: [Colors.pink,Colors.red,Colors.blue,Colors.purple,])),
                child: Column(

                  children: [

                    Text("Happy Birthday !!",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w300)),
                    Text("Date : 6/9/69",style: TextStyle(color: const Color.fromARGB(255, 255, 255, 0)),),
                    Text("May this be your best birthday",style: TextStyle(color: const Color.fromARGB(255, 255, 255, 0)),),
                  
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
    }
}
