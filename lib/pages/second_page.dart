import 'package:flutter/material.dart';
import 'package:untitled5/pages/third_page.dart';

class SecondPage extends StatefulWidget {
  static const String id = "second_page";

  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Fotos2'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, ThirdPage.id);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: const Center(
        child: Image(
          height: 300,
          width: 300,
          // markazdan yuqoridagi o'lchamli rasmni qirqib oladi
          fit: BoxFit.cover,
          image: AssetImage('assets/images/img2.jpeg'),
        ),
      ),
    );
  }
}
