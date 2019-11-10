import 'package:flutter/material.dart';

class DemoStack extends StatefulWidget {
  @override
  _DemoStackState createState() => _DemoStackState();
}

class _DemoStackState extends State<DemoStack> {
  double w;
  double h;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width - 40.0;
    h = MediaQuery.of(context).size.height - 40.0;
    w > h ? w = h : h = w;
    return Stack(
      children: <Widget>[
        Center(
          child: Container(
            color: Colors.greenAccent,
            height: h - 0 * h / 5,
            width: w - 0 * w / 5,
          ),
        ),
        Center(
          child: Container(
            color: Colors.red,
            height: h - 1 * h / 5,
            width: w - 1 * w / 5,
          ),
        ),
        Center(
          child: Container(
            color: Colors.greenAccent,
            height: h - 2 * h / 5,
            width: w - 2 * w / 5,
          ),
        ),
        Center(
          child: Container(
            color: Colors.red,
            height: h - 3 * h / 5,
            width: w - 3 * w / 5,
          ),
        ),
        Center(
          child: Container(
            color: Colors.greenAccent,
            height: h - 4 * h / 5,
            width: w - 4 * w / 5,
          ),
        ),
        Center(
          child: Container(
            color: Colors.red,
            height: h - 5 * h / 5,
            width: w - 5 * w / 5,
          ),
        ),
      ],
    );
  }
}
