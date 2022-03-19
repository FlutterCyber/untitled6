import 'package:flutter/material.dart';
import 'package:untitled5/pages/second_page.dart';

class FirstPage extends StatefulWidget {
  static const String id = "first_page";

  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fotos1'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, SecondPage.id);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: Image.asset("assets/images/img1.jpg"),
      ),
    );
  }
}
