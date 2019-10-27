import 'package:flutter/material.dart';

class CodeDemoScreen extends StatefulWidget {
  @override
  _CodeDemoScreenState createState() => _CodeDemoScreenState();
}

class _CodeDemoScreenState extends State<CodeDemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Code Demo"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Container(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text("App hellw"),
                subtitle: Text("Ứng dụng đầu tiên"),
                leading: Icon(Icons.favorite_border),
              ),
              ListTile(
                title: Text("Text"),
                subtitle: Text("Hiển thị thông tin ra màn hình"),
                leading: Icon(Icons.favorite_border),
              ),
              ListTile(
                title: Text("TextFiel"),
                subtitle: Text("Nhập thông tin"),
                leading: Icon(Icons.favorite_border),
              )
            ],
          ),
        ),
      ),
    );
  }
}
