import 'package:flutter/material.dart';
class p1 extends StatefulWidget {
  const p1({super.key});

  @override
  State<p1> createState() => _p1State();
}

class _p1State extends State<p1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text("FeedBack Form",),
        ),
        body: Column(
                children: [
                Text("How Do you feel after using this product ??",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.sentiment_very_satisfied),
                        onPressed: () {
                          // Handle button press
                        },
                        iconSize: 50,
                        color: Colors.green,
                      ),
              
                      IconButton(
                        icon: Icon(Icons.sentiment_neutral),
                        onPressed: () {
                          // Handle button press
                        },
                        iconSize: 50,
                        color: Colors.grey,
                      ),
                      IconButton(
                        icon: Icon(Icons.sentiment_very_dissatisfied),
                        onPressed: () {
                          // Handle button press
                        },
                        iconSize: 50,
                        color: Colors.red,
                      ),

                    ],
                    
                  ),
                  Text("Rating : ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          textStyle: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          // Handle button press
                        },
                        child: Text('1'),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          textStyle: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          // Handle button press
                        },
                        child: Text('2'),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          textStyle: TextStyle(color: Colors.white,fontSize: 16),
                        ),  
                        onPressed: () {
                          // Handle button press
                        },
                        child: Text('3'),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          textStyle: TextStyle(color: Colors.white,fontSize: 16),
                        ),
                        onPressed: () {
                          // Handle button press
                        },
                        child: Text('4'),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          textStyle: TextStyle(color: Colors.white,fontSize: 16),
                        ),
                        onPressed: () {
                          // Handle button press
                        },
                        child: Text('5'),
                      ),
                    ],
                    
                  ),
                  Text("Message : ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22)),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your message',
                    ),
                    maxLines: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    child: Text('Submit'),
                  ),
          ],
          
        ) ,
      ),
    );
  }
}
