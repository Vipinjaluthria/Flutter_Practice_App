import 'package:flutter/material.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
      appBar: AppBar(
        title: Text('My first Flutter App'),
        elevation: 0,
      ),
      body: Text('hello'),
      drawer: Drawer(
        child: Text('About us '),
      ),
    ));
  }
}
