import 'package:flutter/material.dart';

class DemoIcon extends StatefulWidget {
  @override
  _DemoIconState createState() => _DemoIconState();
}

class _DemoIconState extends State<DemoIcon> {
  bool btn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.important_devices),
            SizedBox(height: 40.0),
            Icon(
              Icons.favorite_border,
              size: 50.0,
            ),
            SizedBox(height: 40.0),
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 100.0,
            )
          ],
        ),
      ),
    );
  }
}
