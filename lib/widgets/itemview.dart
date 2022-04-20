// ignore_for_file: empty_constructor_bodies, prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:phoneaccessories/models/Catalog.dart';

class ItemView extends StatelessWidget {
  //final means 1 bar item main chnge krny k bad us main change ni kr skty
  final item;
  const ItemView({Key? key, @required this.item})
      //assert is using for just debugging time
      // if the item is null in container it will return null at the time of debugging
      // use for null saftey errors
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        elevation: 2.0,
        child: ListTile(
          onTap: () {
            print("iphone");
          },
          leading: Image.network(item.imageUrl),
          title: Text(item.name),
          subtitle: Text(item.desc),
          // title k samny price ya koi b cheez show krny k lye
          trailing: Text(
            "\$${item.price}",
            textScaleFactor: 1.2,
            style: TextStyle(
                color: Colors.deepPurple, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
