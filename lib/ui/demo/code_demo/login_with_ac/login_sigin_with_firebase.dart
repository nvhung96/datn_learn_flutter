import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LogInWithEmailAndPassword extends StatefulWidget {
  @override
  _LogInWithEmailAndPasswordState createState() =>
      _LogInWithEmailAndPasswordState();
}

class _LogInWithEmailAndPasswordState
    extends State<LogInWithEmailAndPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _controllerTextEmail = TextEditingController();
  TextEditingController _controllerTextPassword = TextEditingController();

  SignInSignUpPresenter _presenter;

  @override
  void initState() {
    _presenter = SignInSignUpPresenter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Form(
          key: _formKey,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlutterLogo(
                    size: 200.0,
                  ),
                  TextFormField(
                    validator: (input) => _presenter.checkEmail(email: input),
                    controller: _controllerTextEmail,
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
                  ),
                  TextFormField(
                    validator: (input) =>
                        _presenter.checkPassword(password: input),
                    controller: _controllerTextPassword,
                    style: TextStyle(color: Colors.blue),
                    decoration: InputDecoration(
                        hintText: "Mật khẩu",
                        hintStyle: TextStyle(color: Colors.blue.shade200),
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.lock,
                          color: Colors.blue,
                        )),
                  ),
                  SizedBox(
                    width: 200.0,
                    height: 40.0,
                    child: RaisedButton(
                      child: Text("Đăng Nhập"),
                      onPressed: () {
                        btnSignIn();

                      },
                    ),
                  ),
                  SizedBox(
                    width: 200.0,
                    height: 40.0,
                    child: RaisedButton(
                      child: Text("Đăng Ký"),
                      onPressed: () {
                        btnSignUp();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        _showCircularProgress(),
      ],
    );
  }

  Widget _showCircularProgress() {
    if (_presenter.isLoading) {
      return Center(child: CircularProgressIndicator());
    }
    return Container(
      height: 0.0,
      width: 0.0,
    );
  }

  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      return true;
    }
    return false;
  }

  Future btnSignUp() async {
    _presenter.userAPI = null;
    if (validateAndSave()) {
      setState(() {
        _presenter.isLoading = true;
      });
      try {
        _presenter.userAPI = await _presenter.signUp(
            email: _controllerTextEmail.text,
            password: _controllerTextPassword.text);
      } catch (e) {
        diaLog(
            "${e.toString().substring(e.toString().indexOf(", ") + 2, e.toString().lastIndexOf(","))}");
      } finally {
        setState(() {
          _presenter.isLoading = false;
        });
        if (_presenter.userAPI != null) {
          diaLog(
              " IP: ${_presenter.userAPI}");
        }
      }
    }
  }

  Future btnSignIn() async {
    _presenter.userAPI = null;
    if (validateAndSave()) {
      setState(() {
        _presenter.isLoading = true;
      });
      try {
        _presenter.userAPI = await _presenter.signIn(
            email: _controllerTextEmail.text,
            password: _controllerTextPassword.text);
      } catch (e) {
        diaLog(
            "${e.toString().substring(e.toString().indexOf(", ") + 2, e.toString().lastIndexOf(","))}");
      } finally {
        setState(() {
          _presenter.isLoading = false;
        });
        if (_presenter.userAPI != null) {
          diaLog("IP: ${_presenter.userAPI}");
        }
      }
    }
  }

  void diaLog(String diaLog) {
    showDialog(
        context: context,
        // ignore: deprecated_member_use
        child: AlertDialog(
          content: Text(diaLog),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.close),
                onPressed: () => Navigator.pop(context))
          ],
        ));
  }
}

class SignInSignUpPresenter {
  String userAPI = "";
  bool isLoading = false;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> signIn({String email, String password}) async {
    AuthResult result = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    return user.uid;
  }

  Future<String> signUp({String email, String password}) async {
    AuthResult result = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    return user.uid;
  }

  String checkEmail({String email}) {
    if (email == null || email == "") {
      return "Bạn chưa nhập email";
    }
    var valEmail =
        RegExp(r"[a-zA-Z0-9]+@+[a-zA-Z0-9]+.+[a-zA-Z0-9]").hasMatch(email);
    if (!valEmail) {
      return "Email sai định dạng";
    }

    return null;
  }

  String checkPassword({String password}) {
    if (password == null || password == "") {
      return "Mật khẩu không được để trống";
    }

    if (password.length < 6) {
      return "Mật khẩu ít nhất có 6 ký tự";
    }
    return null;
  }
}
