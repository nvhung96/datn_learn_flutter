import 'package:flutter/material.dart';

class DemoButton extends StatefulWidget {
  @override
  _DemoButtonState createState() => _DemoButtonState();
}

class _DemoButtonState extends State<DemoButton> {
  String text = "";
  bool checked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("$text"),
            SizedBox(
              height: 50.0,
            ),
            RaisedButton(
              child: Text("RaisedButton"),
              onPressed: () {
                setState(() {
                  text = "RaisedButton";
                });
              },
            ),
            SizedBox(
              height: 50.0,
            ),
            FlatButton(
              child: Text("FlatButton"),
              onPressed: () {
                setState(() {
                  text = "FlatButton";
                });
              },
            ),
            SizedBox(
              height: 50.0,
            ),
            IconButton(
              icon: checked ? Icon(Icons.lock) : Icon(Icons.lock_open),
              onPressed: () {
                setState(() {
                  checked = !checked;
                  if (checked) {
                    text = "IconButton Lock";
                  } else {
                    text = "IconButton Lock Open";
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
