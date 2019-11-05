import 'package:datn_learn_flutter/ui/code_demo/basics/Image.dart';
import 'package:datn_learn_flutter/ui/code_demo/basics/appbar.dart';
import 'package:datn_learn_flutter/ui/code_demo/basics/container.dart';
import 'package:datn_learn_flutter/ui/code_demo/basics/scaffold.dart';
import 'package:datn_learn_flutter/ui/code_demo/basics/checked_radio.dart';
import 'package:datn_learn_flutter/ui/code_demo/basics/slider.dart';
import 'package:datn_learn_flutter/ui/code_demo/basics/text_field.dart';
import 'package:datn_learn_flutter/ui/code_demo/hello_flutter.dart';
import 'package:datn_learn_flutter/ui/code_demo/basics/button.dart';
import 'package:datn_learn_flutter/ui/code_demo/basics/column.dart';
import 'package:datn_learn_flutter/ui/code_demo/basics/icon.dart';
import 'package:datn_learn_flutter/ui/code_demo/basics/row.dart';
import 'package:datn_learn_flutter/ui/code_demo/basics/text.dart';
import 'package:datn_learn_flutter/ui/page/page_login_screen.dart';
import 'package:flutter/material.dart';

final routes = {
  '/pagelogin': (BuildContext context) => new PageScreen(),
  '/helloflutter': (BuildContext context) => new DemoFlutter(),
  '/column': (BuildContext context) => new DemoColumn(),
  '/row': (BuildContext context) => new DemoRow(),
  '/text': (BuildContext context) => new DemoText(),
  '/icon': (BuildContext context) => new DemoIcon(),
  '/textfield': (BuildContext context) => new DemoTextField(),
  '/button': (BuildContext context) => new DemoButton(),
  '/check_radio': (BuildContext context) => new CheckedRadio(),
  '/slider': (BuildContext context) => new DemoSlider(),
  '/appbar': (BuildContext context) => new DemoAppBar(),
  '/container': (BuildContext context) => new DemoContainerFlutterLogo(),
  '/image': (BuildContext context) => new DemoImage(),
  '/scaffold': (BuildContext context) => new DemoScaffold(),
};
