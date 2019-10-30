import 'package:flutter/material.dart';

class DemoText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Text cơ bản"),
              Text(
                "Text 2",
                style: Theme.of(context)
                    .textTheme
                    .body2
                    .merge(TextStyle(color: Colors.red, fontSize: 15.0)),
              ),
              Text(
                "Text 3",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .merge(TextStyle(color: Colors.blue, fontSize: 15.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
