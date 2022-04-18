// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:phoneaccessories/pages/loginPage.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MobileAcc());
}

class MobileAcc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      //properties of light theme
      theme: ThemeData(
          //primary swatch means k sab colors ko primary color k sath adjust kr dyn
          primarySwatch: Colors.deepPurple),
      //properties of light theme
      darkTheme: ThemeData(brightness: Brightness.dark),
      //routes means ap 1 screen sy kis screen pay jana chahty hain
      debugShowCheckedModeBanner: false,

      routes: {
        "/": (context) => LoginPage(),
        "/homepage": (context) => HomePage(),
        "/loginpage": (context) => LoginPage()
      },
    );
  }
}
