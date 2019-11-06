import 'package:datn_learn_flutter/ui/show_code/code_view.dart';
import 'package:flutter/material.dart';

class TheoryScreen extends StatefulWidget {
  @override
  _TheoryScreen createState() => _TheoryScreen();
}

class _TheoryScreen extends State<TheoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lý thuyết"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: MyCodeView(filePath: "lib/src/pages/lists/list2.dart"),
    );
  }
}
