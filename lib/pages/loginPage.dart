// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:phoneaccessories/pages/home_page.dart';
import 'package:phoneaccessories/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  //form key is used to assoicate our form with text fields which we are using in our UI
  final _formkey = GlobalKey<FormState>();
  movetoHome(BuildContext context) async
  /*Async and Await keywords are used to provide
  a declarative way to define the asynchronous 
  function and use their results. The async 
  keyword is used when we want to declare a 
  function as asynchronous and the await keyword 
  is used only on asynchronous functions
  */
  {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      //await means delayed for a specific time then go to this page
      await Future.delayed(Duration(seconds: 2));
      Navigator.pushNamed(context, MyRoutes.homeRoute);
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                'assets/images/login.png',
                width: 300,
                height: 300,
              ),
              Text(
                "Welcome back $name", //$ sign use to add string interpolation
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter a username";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    //set state is used to build the method again
                    setState(() {
                      name = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Strong Password",
                        labelText: "Password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter a password";
                      }
                      if (value.length < 6) {
                        return "please enter atleast 8 digits password";
                      }
                      return null;
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () => movetoHome(context),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 50,
                  width: changeButton ? 50 : 100,
                  alignment: Alignment.center,
                  child: changeButton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    //if changebutton ? means true
                    borderRadius: BorderRadius.circular(changeButton ? 50 : 10),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Forgot Password"),
            ],
          ),
        ),
      ),
    );
  }
}
