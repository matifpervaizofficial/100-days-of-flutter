// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../utils/routes.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool changeButton = false;
  //form key is used to assoicate our form with text fields which we are using in our UI
  final _formkey = GlobalKey<FormState>();
  movetoHome(BuildContext context) async {
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
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
          key: _formkey,
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Icon(
                  Icons.person_pin,
                  size: 50,
                  color: Colors.deepPurple,
                ),
                Text(
                  " Signup ",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Enter Name",
                    labelText: "Enter your Name",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter a username";
                    }
                    return null;
                  },
                )),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "xyz@....",
                    labelText: "Email",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter a email";
                    }
                    return null;
                  },
                )),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Address",
                    labelText: "Address",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter a address";
                    }
                    return null;
                  },
                )),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "DDMMYYYY",
                    labelText: "DOB",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter a valid date";
                    }
                    return null;
                  },
                )),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Password",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter a password";
                      }
                      if (value.length < 6) {
                        return "please enter atleast 8 digits password";
                      }
                      return null;
                    })),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                  ),
                )),
            SizedBox(
              height: 30,
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
                        "Signup",
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
            )
          ])),
    ));
  }
}
