import 'package:dummy/home_page.dart';
import 'package:dummy/routes.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
        darkTheme:ThemeData(
          brightness: Brightness.dark
        ) ,
      routes: {
        "/":(context) => LoginPage(),
        MyRoutes.homeRoute:(context) => HomePage(),
        MyRoutes.loginRoute:(context) => LoginPage(),
      }
    );
  }
}

