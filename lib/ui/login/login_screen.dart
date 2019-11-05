import 'package:datn_learn_flutter/status/status_login.dart';
import 'package:datn_learn_flutter/ui/login/login_presenter.dart';
import 'package:datn_learn_flutter/ui/page/page_login_presenter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  final VoidCallback upDataStatus;
  final PageLoginPresenter pageLoginPresenter;

  const LoginScreen({Key key, this.upDataStatus, this.pageLoginPresenter})
      : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _controllerTextEmail = TextEditingController();
  TextEditingController _controllerTextPassword = TextEditingController();

  LoginPresenter _presenter = LoginPresenter();

  void resetForm() {
    _formKey.currentState.reset();
  }

  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      return true;
    }
    return false;
  }

  @override
  void initState() {
    if (widget.pageLoginPresenter.email != "" ||
        widget.pageLoginPresenter.email != null) {
      _controllerTextEmail.text = widget.pageLoginPresenter.email;
      _controllerTextPassword.text = widget.pageLoginPresenter.password;

    }
    widget.pageLoginPresenter.setUser(userName: "", password: "");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _buildPageContent(context),
          _showCircularProgress(),
        ],
      ),
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

  Widget _buildPageContent(BuildContext context) {
    return Container(
      color: Colors.blue.shade100,
      child: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            SizedBox(height: 30.0),
            _showLogoFlutter(100.0, "assets/logoflutter.png"),
            SizedBox(height: 10.0),
            _showTextFlutter(),
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

  Widget _showLogoFlutter(double size, String image) {
    return SizedBox(
      width: size,
      height: size,
      child: Container(
        child: Image(
          image: AssetImage(image),
        ),
      ),
    );
  }

  Widget _showTextFlutter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Chào mừng bạn đến với flutter",
            style: TextStyle(color: Colors.blue, fontSize: 15.0))
      ],
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
                        validator: (input) =>
                            _presenter.checkEmail(email: input),
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
                              validator: (intput) =>
                                  _presenter.checkPassword(password: intput),
                              controller: _controllerTextPassword,
                              style: TextStyle(color: Colors.blue),
                              obscureText: _presenter.isPassword,
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
                                !_presenter.isPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.blue),
                            onPressed: () {
                              setState(() {
                                _presenter
                                    .setIsPassword(!_presenter.isPassword);
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
                  onPressed: () {
                    mainButtonFunction();
                  },
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
          onPressed: () {
            widget.pageLoginPresenter.setStatus(StatusLogin.SIGN_IN);
            widget.upDataStatus();
          },
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

  Future mainButtonFunction() async {
    if (validateAndSave()) {
      setState(() {
        _presenter.isLoading = true;
      });
      try {
        _presenter.userAPI = await _presenter.signIn(
            email: _controllerTextEmail.text,
            password: _controllerTextPassword.text);
      } catch (e) {
        print('Error: $e');
        diaLog("Email hoặc mật khẩu không chính xác");
      } finally {
        setState(() {
          _presenter.isLoading = false;
        });
        if (_presenter.userAPI != null) {
          await _presenter.setUser(
              email: _controllerTextEmail.text,
              password: _controllerTextPassword.text);
          widget.pageLoginPresenter.setStatus(StatusLogin.LOGGED_IN);
          widget.upDataStatus();
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
