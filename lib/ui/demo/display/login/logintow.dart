import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DisplayLoginTow extends StatefulWidget {
  @override
  _DisplayLoginTowState createState() => _DisplayLoginTowState();
}

class _DisplayLoginTowState extends State<DisplayLoginTow> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isPassword;

  @override
  void initState() {
    isPassword = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _buildPageContent(context),
        ],
      ),
    );
  }

  Widget _buildPageContent(BuildContext context) {
    return Container(
      color: Colors.blue.shade100,
      child: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            SizedBox(height: 30.0),
            _showLogoFlutter(150.0),
            SizedBox(height: 10.0),
            _showLoginForm(),
            _showSignUp(),
            SizedBox(height: 20.0),
            _showTextLoginWith(),
            _showGoogleFace(),
          ],
        ),
      ),
    );
  }

  Widget _showLogoFlutter(double size) {
    return FlutterLogo(
      colors: Colors.red,
      size: size,
      textColor: Colors.green,
      style: FlutterLogoStyle.stacked,
    );
  }

  Container _showLoginForm() {
    return Container(
      padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0, bottom: 5.0),
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: RoundedDiagonalPathClipper(),
            child: Container(
              height: 400,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 90.0,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        style: TextStyle(color: Colors.blue),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: "Email đăng nhập",
                            hintStyle: TextStyle(color: Colors.blue.shade200),
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.email,
                              color: Colors.blue,
                            )),
                      )),
                  Container(
                    child: Divider(
                      color: Colors.blue.shade400,
                    ),
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Mật khẩu",
                                  hintStyle:
                                      TextStyle(color: Colors.blue.shade200),
                                  border: InputBorder.none,
                                  icon: Icon(
                                    Icons.lock,
                                    color: Colors.blue,
                                  )),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                                !isPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.blue),
                            onPressed: () {
                              setState(() {
                                isPassword = !isPassword;
                              });
                            },
                          )
                        ],
                      )),
                  Container(
                    child: Divider(
                      color: Colors.blue.shade400,
                    ),
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 40.0,
                backgroundColor: Colors.blue.shade600,
                child: Icon(Icons.person),
              ),
            ],
          ),
          Container(
            height: 420,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 150.0,
                height: 40.0,
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                  child: Text("Đăng nhập",
                      style: TextStyle(color: Colors.white70, fontSize: 15.0)),
                  color: Colors.blue,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _showSignUp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text("Đăng ký nếu bạn chưa có mật khẩu ?",
              style: TextStyle(color: Colors.blue, fontSize: 15.0)),
        )
      ],
    );
  }

  Widget _showTextLoginWith() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Đăng nhập với",
            style: TextStyle(color: Colors.blue, fontSize: 15.0))
      ],
    );
  }

  Widget _showGoogleFace() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton.icon(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          color: Colors.red,
          icon: Icon(
            FontAwesomeIcons.google,
            color: Colors.white,
          ),
          label: Text(
            "Google",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
        ),
        SizedBox(width: 10.0),
        RaisedButton.icon(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          color: Colors.indigo,
          icon: Icon(
            FontAwesomeIcons.facebook,
            color: Colors.white,
          ),
          label: Text(
            "Facebook",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
