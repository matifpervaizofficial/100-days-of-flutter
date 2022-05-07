import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'themes.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        /// ignore: prefer_const_literals_to_create_immutables
        children: [
          "Product Catalog".text.xl4.bold.color(MyThemes.darkbluecolor).make(),
          "Trending Items".text.xl2.bold.make()
        ],
      ),
    );
  }
}
