// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        Image.asset("assets/images/login.png", fit: BoxFit.cover),
        SizedBox(height: 20),
        Text(
          "welcome back guys",
          style: TextStyle(fontSize: 30),
        ),
        Column(children: [
          TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter Username", labelText: "Username")),
          TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Enter Password", labelText: "Password")),
                  SizedBox(height: 20.0,),
                  ElevatedButton(onPressed:(){print("hi codepur")}, child: Text("Login"),style: TextButton.styleFrom())
        ])
      ]),
    );
  }
}
