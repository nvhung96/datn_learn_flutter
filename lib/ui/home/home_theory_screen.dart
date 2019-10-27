import 'package:flutter/material.dart';

class TheoryScreen extends StatefulWidget {
  @override
  _TheoryScreen createState() => _TheoryScreen();
}

class _TheoryScreen extends State<TheoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lý thuyết"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Container(
          child: Text("Welcom to user Theory"),
        ),
      ),
    );
  }
}
