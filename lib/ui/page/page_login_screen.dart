import 'package:datn_learn_flutter/status/status_login.dart';
import 'package:datn_learn_flutter/ui/page/home/home_screen.dart';
import 'package:datn_learn_flutter/ui/page/login/login_screen.dart';
import 'package:datn_learn_flutter/ui/page/page_login_presenter.dart';
import 'package:datn_learn_flutter/ui/page/signup/signup_screen.dart';
import 'package:flutter/material.dart';

class PageScreen extends StatefulWidget {
  final String email;
  final String password;

  const PageScreen({Key key, this.email, this.password}) : super(key: key);

  @override
  _PageScreenState createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  PageLoginPresenter _pageLoginPresenter = PageLoginPresenter();

  @override
  void initState() {
    if (widget.email != null && widget.password != null) {
      _pageLoginPresenter.setUser(
          userName: widget.email, password: widget.password);
    }
    _pageLoginPresenter.setStatus(StatusLogin.LOGGED_IN);
    super.initState();
  }

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    switch (_pageLoginPresenter.status) {
      case StatusLogin.LOG_IN:
        return LoginScreen(
          upDataStatus: updateStatus,
          pageLoginPresenter: _pageLoginPresenter,
        );
        break;
      case StatusLogin.LOGGED_IN:
        return HomeScreen(
          upDataStatus: updateStatus,
          pageLoginPresenter: _pageLoginPresenter,
        );
        break;
      case StatusLogin.SIGN_IN:
        return SignupScreen(
          upDataStatus: updateStatus,
          pageLoginPresenter: _pageLoginPresenter,
        );
        break;
    }
  }

  void updateStatus() {
    setState(() {});
  }
}
