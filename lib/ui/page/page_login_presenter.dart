import 'package:datn_learn_flutter/services/firebase_login.dart';
import 'package:datn_learn_flutter/status/status_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageLoginPresenter {
  AuthLogin _authLogin = AuthLogin();
  String userAPI;
  StatusLogin status = StatusLogin.LOG_IN;
  String email = "";
  String password = "";

  void setUser({String userName, String password}) {
    this.email = userName;
    this.password = password;
  }

  void setStatus(StatusLogin status) {
    this.status = status;
  }

}
