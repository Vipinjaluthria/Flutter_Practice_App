import 'dart:developer';

import 'package:firstapp/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/login.png',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextFormField(
                        decoration: InputDecoration(
                      hintText: 'Enter Email',
                      labelText: "Email",
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.purple, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Enter password',
                          labelText: "Password",
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.purple, width: 2)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Myroutes.Homeroute);
                          print('kaise ho bro ');
                        },
                        style: TextButton.styleFrom(
                          minimumSize: Size(150, 50),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 17),
                        )),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
