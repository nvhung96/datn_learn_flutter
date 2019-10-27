import 'package:datn_learn_flutter/services/firebase_login.dart';

class SignUpPresenter {
  AuthLogin _authLogin = AuthLogin();
  String userAPI;
  bool isPassword = true;
  bool isConfirmPassword = true;
  bool isLoading = false;

  void setIsPassWord(bool check) {
    isPassword = check;
  }

  void setIsConfirmPassword(bool check) {
    isConfirmPassword = check;
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

  String checkConfirmPassowd({String password, String confirmPassword}) {
    if (confirmPassword == null || confirmPassword == "") {
      return "Mật khẩu không được để trống";
    }

    if (confirmPassword.length < 6) {
      return "Mật khẩu ít nhất có 6 ký tự";
    }

    if (password != confirmPassword) {
      return "Mật khẩu nhập lại không đúng";
    }
    return null;
  }

  Future<String> signUp({String email, String password}) async {
    userAPI = await _authLogin.signUp(email: email, password: password);
    return userAPI;
  }
}
