import 'package:datn_learn_flutter/ui/demo/code_demo/login_with_gmail/login_firebase.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginWithGoogle extends StatefulWidget {
  @override
  _LoginWithGoogleState createState() => _LoginWithGoogleState();
}

class _LoginWithGoogleState extends State<LoginWithGoogle> {
  LoginFireBase _login;
  bool checkLogIn = false;

  @override
  void initState() {
    _login = LoginFireBase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Đăng nhập với tài khoản GOOGLE"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            btnSignIn(),
            btnSignOut(),
            userGoogle(),
          ],
        ),
      ),
    );
  }

  Widget userGoogle() {
    return _login.account != null
        ? Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('Name: '),
                  Text(_login.account.displayName.toString())
                ],
              ),
              Row(
                children: <Widget>[
                  Text('Email: '),
                  Text(_login.account.email)
                ],
              ),
              Row(
                children: <Widget>[Text('Id: '), Text(_login.account.id)],
              ),
              Image.network(
                _login.account.photoUrl.toString(),
                width: 200.0,
                height: 200.0,
              ),
            ],
          )
        : Container(
            height: 0.0,
            width: 0.0,
          );
  }

  Widget btnSignIn() {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: Colors.red,
      icon: Icon(
        FontAwesomeIcons.google,
        color: Colors.white,
      ),
      label: Text(
        "Google SingIn",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () => _signInGoogle(),
    );
  }

  Widget btnSignOut() {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: Colors.green,
      icon: Icon(
        FontAwesomeIcons.google,
        color: Colors.white,
      ),
      label: Text(
        "Google SignOut",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () => _signUotGoogle(),
    );
  }

  Future _signInGoogle() async {
    GoogleSignInAccount account = await _login.sigInGoogle();
    setState(() {
      checkLogIn = true;
    });
    return account;
  }

  Future _signUotGoogle() async {
    await _login.signOutGoogle();
    setState(() {
      checkLogIn = false;
    });
  }
}
