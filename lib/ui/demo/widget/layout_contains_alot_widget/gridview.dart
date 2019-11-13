import 'package:flutter/material.dart';

class DemoGridView extends StatefulWidget {
  @override
  _DemoGridViewState createState() => _DemoGridViewState();
}

class _DemoGridViewState extends State<DemoGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
