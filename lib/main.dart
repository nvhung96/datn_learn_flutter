import 'package:datn_learn_flutter/ui/page/page_login_screen.dart';
import 'package:datn_learn_flutter/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String email = prefs.getString("email");
  String password = prefs.getString("password");
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageScreen(email: email, password: password),
      routes: routes,
    ),
  );
}
