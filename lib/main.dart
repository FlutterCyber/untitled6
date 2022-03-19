import 'package:flutter/material.dart';
import 'package:untitled5/pages/first_page.dart';
import 'package:untitled5/pages/forth_page.dart';
import 'package:untitled5/pages/second_page.dart';
import 'package:untitled5/pages/third_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
      routes: {
        FirstPage.id: (context) => FirstPage(),
        SecondPage.id: (context) => SecondPage(),
        ThirdPage.id: (context) => ThirdPage(),
        ForthPage.id: (context) => ForthPage(),
      },
    );
  }
}
