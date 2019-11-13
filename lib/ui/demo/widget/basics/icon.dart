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
        title: Text("Icon"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.important_devices),
            Icon(
              Icons.favorite_border,
              size: 50.0,
            ),
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 100.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 30.0,
                ),
                Icon(
                  Icons.beach_access,
                  color: Colors.blue,
                  size: 36.0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
