import 'package:flutter/material.dart';
import 'forth_page.dart';

class ThirdPage extends StatefulWidget {
  static const String id = "third_page";

  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Fotos3'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, ForthPage.id);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: Image.network(
          "https://thumbs.dreamstime.com/b/tashkent-tv-tower-aerial-shot-sunset-uzbekistan-taken-shutterstock-id-purchase-order-198496654.jpg",
          // width: 150,
          // height: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
