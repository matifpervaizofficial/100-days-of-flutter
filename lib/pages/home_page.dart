// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:phoneaccessories/widgets/drawerpage.dart';
import 'package:phoneaccessories/models/Catalog.dart';
import '../widgets/itemview.dart';

class HomePage extends StatelessWidget {
  /* dummy list is just declared to check how our layout will looks like
  when a number of lists show on apps
  */

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
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return ItemView(item: CatalogModel.items[index]);
        },
      ),
      drawer: DrawerPage(),
    );
  }
}
