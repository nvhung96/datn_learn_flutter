import 'package:flutter/material.dart';

class DemoColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: 300.0,
              height: 100.0,
              child: Container(
                child: Center(child: Text("1")),
                color: Colors.red,
              ),
            ),
            SizedBox(
              width: 300.0,
              height: 100.0,
              child: Container(
                child: Center(child: Text("2")),
                color: Colors.orange,
              ),
            ),
            SizedBox(
              width: 300.0,
              height: 100.0,
              child: Container(
                child: Center(child: Text("3")),
                color: Colors.yellow,
              ),
            ),
            SizedBox(
              width: 300.0,
              height: 100.0,
              child: Container(
                child: Center(child: Text("4")),
                color: Colors.green,
              ),
            ),
            SizedBox(
              width: 300.0,
              height: 100.0,
              child: Container(
                child: Center(child: Text("5")),
                color: Colors.blue,
              ),
            ),
            SizedBox(
              width: 300.0,
              height: 100.0,
              child: Container(
                child: Center(child: Text("6")),
                color: Colors.brown,
              ),
            ),
            SizedBox(
              width: 300.0,
              height: 100.0,
              child: Container(
                child: Center(child: Text("7")),
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
