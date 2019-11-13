import 'package:flutter/material.dart';

class DemoImage extends StatefulWidget {
  @override
  _DemoImageState createState() => _DemoImageState();
}

class _DemoImageState extends State<DemoImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Imager"),
        centerTitle: true,
      ),
      body: Center(
        child: Image(
          image: NetworkImage(
              'http://genknews.genkcdn.vn/zoom/650_413/2018/flutter-feature-15199173554891874931831-crop1519917399530p.png'),
        ),
      ),
    );
  }
}
