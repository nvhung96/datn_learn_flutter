import 'package:datn_learn_flutter/status/status_login.dart';
import 'package:datn_learn_flutter/ui/page/page_login_presenter.dart';
import 'package:datn_learn_flutter/ui/signup/signup_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class SignupScreen extends StatefulWidget {
  final VoidCallback upDataStatus;
  final PageLoginPresenter pageLoginPresenter;

  const SignupScreen({Key key, this.upDataStatus, this.pageLoginPresenter})
      : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _controllerTextEmail = TextEditingController();
  TextEditingController _controllerTextPassword = TextEditingController();
  TextEditingController _controllerTextConfirmPassword =
      TextEditingController();

  SignUpPresenter _presenter = SignUpPresenter();

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
            _showLogoFlutter(150.0),
            SizedBox(height: 10.0),
            _showLoginForm(),
            _showSignUp(),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  Widget liss(){
    return ListView(
      children: <Widget>[],
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
                    height: 80.0,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _controllerTextEmail,
                        validator: (input) =>
                            _presenter.checkEmail(email: input),
                        style: TextStyle(color: Colors.blue),
                        decoration: InputDecoration(
                            hintText: "Email",
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
                              controller: _controllerTextPassword,
                              validator: (input) =>
                                  _presenter.checkPassword(password: input),
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
                                ),
                              ),
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
                                    .setIsPassWord(!_presenter.isPassword);
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
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: TextFormField(
                              controller: _controllerTextConfirmPassword,
                              validator: (input) =>
                                  _presenter.checkConfirmPassowd(
                                password: _controllerTextPassword.text,
                                confirmPassword: input,
                              ),
                              obscureText: _presenter.isConfirmPassword,
                              style: TextStyle(color: Colors.blue),
                              decoration: InputDecoration(
                                  hintText: "Nhập lại mật khẩu",
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
                                !_presenter.isConfirmPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.blue),
                            onPressed: () {
                              setState(() {
                                _presenter.setIsConfirmPassword(
                                    !_presenter.isConfirmPassword);
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
                  child: Text("Đăng Ký",
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
            widget.pageLoginPresenter.setStatus(StatusLogin.LOG_IN);
            widget.upDataStatus();
          },
          child: Text("Đăng nhập",
              style: TextStyle(color: Colors.blue, fontSize: 15.0)),
        )
      ],
    );
  }

  Future mainButtonFunction() async {
    if (validateAndSave()) {
      setState(() {
        _presenter.isLoading = true;
      });
      try {
        _presenter.userAPI = await _presenter.signUp(
            email: _controllerTextEmail.text,
            password: _controllerTextPassword.text);
      } catch (e) {
        diaLog("Email đã tồn tại");
      } finally {
        setState(() {
          _presenter.isLoading = false;
        });
        if (_presenter.userAPI != null) {
          widget.pageLoginPresenter.setUser(
              userName: _controllerTextEmail.text,
              password: _controllerTextPassword.text);
          widget.pageLoginPresenter.setStatus(StatusLogin.LOG_IN);
          widget.upDataStatus();
        }
      }
    }
  }

  void diaLog(String diaLog) {
    showDialog(
        context: context,
        // ignore: deprecated_member_use
        child: new AlertDialog(
          content: new Text(diaLog),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.close),
                onPressed: () => Navigator.pop(context))
          ],
        ));
  }
}
