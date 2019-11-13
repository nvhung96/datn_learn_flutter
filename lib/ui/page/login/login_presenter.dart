import 'package:datn_learn_flutter/services/firebase_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPresenter {
  AuthLogin _authLogin = AuthLogin();
  String userAPI;
  bool isPassword = true;
  bool isLoading = false;

 Future setUser({String email, String password}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("email", email);
    await prefs.setString("password", password);
  }

  void setIsPassword(bool check) {
    isPassword = check;
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

  Future signIn({String email, String password}) async {
    userAPI = await _authLogin.signIn(email: email, password: password);
    return userAPI;
  }
}
