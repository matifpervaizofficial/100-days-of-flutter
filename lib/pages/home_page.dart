// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors, avoid_print, unused_local_variable, avoid_types_as_parameter_names, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phoneaccessories/widgets/drawerpage.dart';
import 'package:phoneaccessories/models/Catalog.dart';
import '../widgets/itemview.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /* dummy list is just declared to check how our layout will looks like
  when a number of lists show on apps
  final dummy list= list.generate(50, (index)=> CatalogModel.items[0]);
   
  */
  /*---------------------------------------------------------------------*/
  /*
    1:init jesy class initialize hoti hai usi tara widget jo abi bna ni hai 
    yani build method call ni hua hai us sy pehly ka means call hony sy pehly
    ka mil jata hai
    2: agar humy data mil jae to hum usy seedha yaha build mai pass kr skty hain
    */

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //load data is a method for loading data
    loadData();
  }

  //yaha loadData main humy json sy data load krna hai
  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    //we can not map data of json file directly. we have to decode this data
    final decodedata = jsonDecode(catalogJson);
    //decode means string sy dosry format(map ) main conversion krna
    //now we have to map our data in catalog model class
    var productsData = decodedata[
        "products"]; // products key d hai means sirf products ka data ajae
    CatalogModel.items = List.from(productsData)
        .map<Item>((Item) => Item.fromMap(Item))
        .toList();
    setState(() {});
  }

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
          return ItemView(
            item: CatalogModel.items[index],
          );
        },
      ),
      drawer: DrawerPage(),
    );
  }
}
