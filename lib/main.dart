import 'package:firstapp/pages/home_page.dart';
import 'package:firstapp/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      initialRoute: '/',
      routes: {
        '/': (context) => Login_Page(),
        '/home': (context) => Home_Page(),
        '/login': (context) => Login_Page()
      },
    );
  }
}
