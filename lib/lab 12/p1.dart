import 'package:flutter/material.dart';

class p1 extends StatefulWidget {
  const p1({super.key});

  @override
  State<p1> createState() => _p1State();
}

class _p1State extends State<p1> {
  List<Map<String, String>> a = [
    {
      "name": "Bus",
      "url":
      "https://www.bing.com/th/id/OIP.ITBSU5ZIt7gSJ95YubruzQHaHa?w=128&h=128&c=8&rs=1&qlt=90&o=6&pid=ImgAns&rm=2",
      "des": "This is a toy bus we dont sell real one",
      "price": "1000"
    },
    {
      "name": "Mac Mini",
      "url":
      "https://tse3.mm.bing.net/th/id/OIP.PCcGnr6Fdu16AdFyxD9npwHaFj?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
      "des": "This is something that you cant actually buy",
      "price": "100000"
    },
    {
      "name": "Car",
      "url":
      "https://images.pexels.com/photos/31504580/pexels-photo-31504580.jpeg?cs=srgb&dl=pexels-chris-221718132-31504580.jpg&fm=jpg",
      "des": "This is a toy car we dont sell real one",
      "price": "1000"
    },
    {
      "name": "Shoes",
      "url":
      "https://assets.adidas.com/images/w_1880,f_auto,q_auto/6c2f7028e26d40ed98a512420cb4db00_9366/IG8292_HM3_hover.jpg",
      "des": "Some Good Shoes",
      "price": "1000"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E-Commerce App"),
      ),
      body: ListView.builder(
        itemCount: a.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(a[index]["url"]!),
              ),
              title: Text(
                a[index]["name"]!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rs. ${a[index]["price"]!}",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(a[index]["des"]!),
                ],
              ),
              trailing: IconButton.outlined(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "${a[index]["name"]} added to cart successfully!",
                      ),
                      duration: const Duration(seconds: 2),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                icon: const Icon(Icons.shopping_cart),
              ),
            ),
          );
        },
      ),
    );
  }
}