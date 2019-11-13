import 'package:flutter/material.dart';

class DemoContainerFlutterLogo extends StatefulWidget {
  @override
  _DemoContainerFlutterLogoState createState() =>
      _DemoContainerFlutterLogoState();
}

class _DemoContainerFlutterLogoState extends State<DemoContainerFlutterLogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container và FlutterLogo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10.0),
              color: Colors.amber[600],
              width: 200.0,
              height: 200.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 200.0,
              textColor: Colors.green,
              colors: Colors.red,
              duration: Duration(microseconds: 1000, seconds: 1),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                constraints: BoxConstraints.expand(
                  height: Theme.of(context).textTheme.display1.fontSize * 1.1 +
                      100.0,
                ),
                color: Colors.blue[600],
                alignment: Alignment.center,
                child: Text('Hello World',
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .copyWith(color: Colors.white)),
                transform: Matrix4.rotationZ(0.2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
