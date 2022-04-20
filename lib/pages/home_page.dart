// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:phoneaccessories/pages/drawerpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Cellphone Catalog",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Container(),
      drawer: DrawerPage(),
    );
  }
}
