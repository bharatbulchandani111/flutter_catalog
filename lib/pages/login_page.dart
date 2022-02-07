// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset("assets/images/login.png", fit: BoxFit.cover),
            SizedBox(height: 20),
            Text(
              "welcome back $name",
              style: TextStyle(fontSize: 30),
            ),
            Column(children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter Username", labelText: "Username"),
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
              ),
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password")),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
              
              child: Container(
                  width: 100,
                  height: 50,
                  
                  alignment: Alignment.center,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
              
                  decoration:
                      BoxDecoration(color: Colors.greenAccent,borderRadius: BorderRadius.circular(10)),),)
              // ElevatedButton(
              //     onPressed: () {
              //       Navigator.pushNamed(context, MyRoutes.homeRoute);
              //     },
              //     child: Text("Login"),
              //     style: TextButton.styleFrom(minimumSize: Size(120, 40)))
            ])
          ]),
        ));
  }
}
