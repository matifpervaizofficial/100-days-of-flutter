// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:phoneaccessories/utils/routes.dart';

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
                  backgroundImage: AssetImage("assets/images/profile.png")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Divider(
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.3,
              /*The number of font pixels for each logical pixel.
              For example, if the text scale factor is 1.5, 
              text will be 50% larger than the specified font size.
              */
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.settings_sharp,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              "Settings",
              textScaleFactor: 1.3,
              /*The number of font pixels for each logical pixel.
              For example, if the text scale factor is 1.5, 
              text will be 50% larger than the specified font size.
              */
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.notifications,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              "Notifications",
              textScaleFactor: 1.3,
              /*The number of font pixels for each logical pixel.
              For example, if the text scale factor is 1.5, 
              text will be 50% larger than the specified font size.
              */
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.support_agent,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              "Customer Support",
              textScaleFactor: 1.3,
              /*The number of font pixels for each logical pixel.
              For example, if the text scale factor is 1.5, 
              text will be 50% larger than the specified font size.
              */
              style: TextStyle(color: Colors.white),
            ),
          ),
        ]),
      ),
    );
  }
}
