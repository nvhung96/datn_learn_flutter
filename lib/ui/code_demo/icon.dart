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
            icon(),
            sizeBox(height: 40.0),
            iconSize(),
            sizeBox(height: 40.0),
            iconSizeColor(),
          ],
        ),
      ),
    );
  }

  Widget sizeBox({double height, double width}) {
    return SizedBox(
      height: height != null ? height : null,
      width: width != null ? width : null,
    );
  }

  Widget icon() {
    return Icon(Icons.important_devices);
  }

  Widget iconSize() {
    return Icon(
      Icons.favorite_border,
      size: 50.0,
    );
  }

  Widget iconSizeColor() {
    return Icon(
      Icons.favorite,
      color: Colors.red,
      size: 100.0,
    );
  }
}
