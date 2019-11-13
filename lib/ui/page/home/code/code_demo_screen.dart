import 'package:datn_learn_flutter/ui/demo/code_demo/login_with_gmail/login_with_gmail.dart';
import 'package:flutter/material.dart';

class CodeDemoScreen extends StatefulWidget {
  @override
  _TheoryScreen createState() => _TheoryScreen();
}

class _TheoryScreen extends State<CodeDemoScreen> {
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
      body: LoginWithGoogle(),
    );
  }
}
