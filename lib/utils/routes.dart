import 'package:datn_learn_flutter/ui/code_demo/app_hellw.dart';
import 'package:datn_learn_flutter/ui/code_demo/button.dart';
import 'package:datn_learn_flutter/ui/code_demo/column.dart';
import 'package:datn_learn_flutter/ui/code_demo/icon.dart';
import 'package:datn_learn_flutter/ui/code_demo/row.dart';
import 'package:datn_learn_flutter/ui/code_demo/text.dart';
import 'package:datn_learn_flutter/ui/code_demo/text_field.dart';
import 'package:datn_learn_flutter/ui/page/page_login_screen.dart';
import 'package:flutter/material.dart';

final routes = {
  '/pagelogin': (BuildContext context) => new PageScreen(),
  '/appdellw': (BuildContext context) => new DemoFlutter(),
  '/column': (BuildContext context) => new DemoColumn(),
  '/row': (BuildContext context) => new DemoRow(),
  '/text': (BuildContext context) => new DemoText(),
  '/icon': (BuildContext context) => new DemoIcon(),
  '/textfield': (BuildContext context) => new DemoTextField(),
  '/button':(BuildContext context) => new DemoButton(),
};