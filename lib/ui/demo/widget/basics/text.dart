import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';

// ignore: must_be_immutable
class DemoText extends StatelessWidget {
  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;
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
              text(),
              sizeBox(height: 40.0),
              textStyle1(),
              sizeBox(height: 40.0),
              textStyle2(),
              sizeBox(height: 40.0),
              textStyle3(),
            ],
          ),
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

  Widget text() {
    return Text("Text cơ bản");
  }

  Widget textStyle1() {
    return Text(
      "Text Style 1",
      style: Theme.of(_context).textTheme.title.merge(TextStyle(
            color: Colors.red,
            fontSize: 15.0,
            backgroundColor: Colors.green,
          )),
    );
  }

  Widget textStyle2() {
    return Text(
      "Text Style 2",
      textScaleFactor: 1.6,
      style: Theme.of(_context).textTheme.caption.merge(TextStyle(
            color: Colors.blue,
            fontSize: 15.0,
            fontWeight: FontWeight.w900,
          )),
    );
  }

/*
   trước khi gọi BorderedText hay thêm
   1. bordered_text: ^0.1.4 vào file pubspec.yaml như dưới
   dependencies:
    flutter:
      sdk: flutter

    bordered_text: ^0.1.4
    2. gọi thư viện bordered_text bên trong class muốn dùng:
       import 'package:bordered_text/bordered_text.dart';
 */
  Widget textStyle3() {
    return BorderedText(
        strokeWidth: 5.0,
        strokeColor: Color(0xfffff3cd),
        child: Text(
          "Text Style 3",
          textScaleFactor: 1.1,
          style: TextStyle(
              fontWeight: FontWeight.w900,
              color: Color(0xff743237),
              fontSize: 20.0,
              fontStyle: FontStyle.italic),
        ));
  }
}
