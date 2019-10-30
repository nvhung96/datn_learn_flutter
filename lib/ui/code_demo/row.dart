import 'package:flutter/material.dart';

class DemoRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row"),
        centerTitle: true,
      ),
      body: Container(
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 50.0,
              height: 100.0,
              child: Container(
                child: Center(child: Text("1")),
                color: Colors.red,
              ),
            ),
            SizedBox(
              width: 50.0,
              height: 100.0,
              child: Container(
                child: Center(child: Text("2")),
                color: Colors.orange,
              ),
            ),
            SizedBox(
              width: 50.0,
              height: 100.0,
              child: Container(
                child: Center(child: Text("3")),
                color: Colors.yellow,
              ),
            ),
            SizedBox(
              width: 50.0,
              height: 100.0,
              child: Container(
                child: Center(child: Text("4")),
                color: Colors.green,
              ),
            ),
            SizedBox(
              width: 50.0,
              height: 100.0,
              child: Container(
                child: Center(child: Text("5")),
                color: Colors.blue,
              ),
            ),
            SizedBox(
              width: 50.0,
              height: 100.0,
              child: Container(
                child: Center(child: Text("6")),
                color: Colors.brown,
              ),
            ),
            SizedBox(
              width: 50.0,
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

