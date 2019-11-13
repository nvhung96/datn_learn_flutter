import 'package:flutter/material.dart';

class DisplayLoginOne extends StatefulWidget {
  @override
  _DisplayLoginOneState createState() => _DisplayLoginOneState();
}

class _DisplayLoginOneState extends State<DisplayLoginOne> {
  Widget _buildPageContent() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20.0),
        color: Colors.grey.shade800,
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                FlutterLogo(size: 200.0,),
                SizedBox(
                  height: 50,
                ),
                ListTile(
                    title: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: "Email đăng nhập",
                      hintStyle: TextStyle(color: Colors.white70),
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.email,
                        color: Colors.white30,
                      )),
                )),
                Divider(
                  color: Colors.grey.shade600,
                ),
                ListTile(
                    title: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: "Mật khẩu",
                      hintStyle: TextStyle(color: Colors.white70),
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.lock,
                        color: Colors.white30,
                      )),
                )),
                Divider(
                  color: Colors.grey.shade600,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {},
                        color: Colors.cyan,
                        child: Text(
                          'Đăng nhập',
                          style:
                              TextStyle(color: Colors.white70, fontSize: 16.0),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Quên mật khẩu?',
                  style: TextStyle(color: Colors.grey.shade500),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPageContent(),
    );
  }
}
