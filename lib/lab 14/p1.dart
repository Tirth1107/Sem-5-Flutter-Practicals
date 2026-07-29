import 'package:flutter/material.dart';
class p1 extends StatelessWidget {
  const p1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Practical 14")),
      body: PageView(
        controller: PageController(viewportFraction: 0.6),
        scrollDirection: Axis.vertical,
        reverse: true,
        children: [
          buildCard(card_text: "This is page 1",card_color: Colors.red),
          buildCard(card_text: "This is page 2",card_color: Colors.green),
          buildCard(card_text: "This is page 3",card_color: Colors.yellow),
          buildCard(card_text: "This is page 4",card_color: Colors.blue),
          buildCard(card_text: "This is page 5"),
        ],
      ),
    );
  }
}
Widget buildCard({required String card_text,Color card_color = Colors.grey}){
  return Card(
    elevation: 5,
    child: Center(child: Text(card_text,style: TextStyle(fontWeight: FontWeight(10),fontSize: 50),),),
  );
}