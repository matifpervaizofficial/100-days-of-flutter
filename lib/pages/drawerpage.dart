// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: Container(
        child: ListView(children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text("Muhammad Atif"),
              accountEmail: Text("matifpervaizofficial@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/3778680/pexels-ph…jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")),
            ),
          ),
          Divider(
            color: Colors.white,
          )
        ]),
      ),
    );
  }
}
