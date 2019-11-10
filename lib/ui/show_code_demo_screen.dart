import 'package:datn_learn_flutter/ui/show_code/show_code_screen.dart';
import 'package:flutter/material.dart';

class ShowCodeDemo extends StatefulWidget {
  final String name;
  final Widget codeDemo;
  final String path;

  const ShowCodeDemo({Key key, this.name, this.codeDemo, this.path})
      : super(key: key);

  @override
  _ShowCodeDemoState createState() => _ShowCodeDemoState();
}

class _ShowCodeDemoState extends State<ShowCodeDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.name}"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            tooltip: "Xem code",
            onPressed: () => Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        new MyCodeView(filePath: widget.path))),
          ),
          IconButton(
            icon: Icon(Icons.subtitles),
            tooltip: "Xem chi tiết widget",
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: widget.codeDemo,
      ),
    );
  }
}
