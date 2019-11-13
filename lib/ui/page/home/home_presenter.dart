import 'package:datn_learn_flutter/services/firebase_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePresenter {
  AuthLogin _authLogin = AuthLogin();

  Future<void> signOut() async {
    await _authLogin.signOut();
  }

  Future setUser({String email, String password}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("email", email);
    await prefs.setString("password", password);
  }
}
