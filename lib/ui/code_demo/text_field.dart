import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoTextField extends StatefulWidget {
  @override
  _DemoTextFieldState createState() => _DemoTextFieldState();
}

class _DemoTextFieldState extends State<DemoTextField> {
  String textEmail, textPass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                onChanged: (input) {
                  setState(() {
                    textEmail = input;
                  });
                },
                decoration: InputDecoration(
                  icon: Icon(Icons.account_box),
                  labelText: "Tên đăng nhập",
                  hintText: "Nhập thông tin",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                onChanged: (input) {
                  setState(() {
                    textPass = input;
                  });
                },
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: "Mật khẩu",
                  hintText: "Nhập thông tin",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text("Email: $textEmail"),
              Text("Password: $textPass"),
            ],
          ),
        ),
      ),
    );
  }
}
