import 'package:flutter/material.dart';

import 'first_page.dart';

class ForthPage extends StatefulWidget {
  static const String id = "forth_page";

  const ForthPage({Key? key}) : super(key: key);

  @override
  State<ForthPage> createState() => _ForthPageState();
}

class _ForthPageState extends State<ForthPage> {
  bool col = true;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fotos4'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                count++;
                if (count.isOdd) {
                  col = false;
                } else {
                  col = true;
                }
              });
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: col ? rang1() : rang2(),
      ),
    );
  }

  Widget rang1() {
    return Container(
      height: 50,
      width: 150,
      color: Colors.blue,
      child: Center(
        child: Text(
          "4 page",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }

  Widget rang2() {
    return Container(
      height: 50,
      width: 150,
      color: Colors.red,
      child: Center(
        child: Text(
          "4 page",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
