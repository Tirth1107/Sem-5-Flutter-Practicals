import 'package:flutter/material.dart';
class p2 extends StatefulWidget {
  const p2({super.key});

  @override
  State<p2> createState() => _p2State();
}

class _p2State extends State<p2> {
  String page_text = "Home Page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Drawer"),),
      drawer: NavigationDrawer(
        children: [
          DrawerHeader(child: CircleAvatar(child: Icon(Icons.person),)),
          ListTile(title: Text("Home"),onTap: () {
            setState(() {
              page_text = "Home Page";
            });
          },),
          ListTile(title: Text("About"),onTap: () {
            setState(() {
              page_text = "About US";
            });
          },),
          ListTile(title: Text("Contact"),onTap: () {
            setState(() {
              page_text = "Contact US";
            });
          },),
          ListTile(title: Text("Settings"),onTap: () {
            setState(() {
              page_text = "Settings";
            });
          },),

      ]),
      body: Center(child: Text(page_text)),
    );
  }
}