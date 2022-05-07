// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phoneaccessories/models/Catalog.dart';
import 'dart:convert';
import 'package:phoneaccessories/widgets/drawerpage.dart';
import 'package:phoneaccessories/widgets/itemview.dart';
import 'package:phoneaccessories/widgets/pageheader.dart';
import 'package:phoneaccessories/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
    //load data is a method for loading data
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogueJson =
        await rootBundle.loadString("assets/files/catalogue.json");
    // print(catalogueJson);
    //decoding json string into another format(map)
    final decodedData = jsonDecode(catalogueJson);
    //decode means string sy dosry format(map ) main conversion krna
    //now we have to map our data in catalog model class
    // print(decodedData);
    // if we have a map and we want to convert it to string -> jsonEncode()
    var productsData = decodedData["products"];
    // print(productsData);
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: Vx.m32,
            child: Column(
              children: [
                PageHeader(),
                if (CatalogModel.items != null &&
                    CatalogModel.items!.isNotEmpty)
                  CataLoglist()
                else
                  (Center(
                    child: LinearProgressIndicator(color: Colors.deepPurple),
                  ))
              ],
            )),
      ),
    );
  }
}

class CataLoglist extends StatelessWidget {
  const CataLoglist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: CatalogModel.items!.length,
          itemBuilder: (context, index) {
            final catalog = CatalogModel.items![index];
            return Catalogitem(catalog: catalog);
            //catalog item constructor is calling here
          }),
    );
  }
}

class Catalogitem extends StatelessWidget {
  final catalog;

  const Catalogitem({Key? key, required this.catalog})
      : assert(catalog != null),
        //assert tell us about the catalog item if it null in debug mode
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox()
        .square(100)
        .make(); //square specify height n width of container or bx
  }
}
