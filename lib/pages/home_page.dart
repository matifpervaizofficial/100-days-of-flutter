// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:phoneaccessories/widgets/drawerpage.dart';
import 'package:phoneaccessories/models/Catalog.dart';
import '../widgets/itemview.dart';

class HomePage extends StatelessWidget {
  final dummylist = List.generate(50, (index) => CatalogModel.items[0]);

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
      //builder provides us a recycler view and render just list on the screen
      // listview is a scrollable arra y
      body: ListView.builder(
        itemCount: dummylist.length,
        itemBuilder: (context, index) {
          return ItemView(item: dummylist[index]);
        },
      ),
      drawer: DrawerPage(),
    );
  }
}
