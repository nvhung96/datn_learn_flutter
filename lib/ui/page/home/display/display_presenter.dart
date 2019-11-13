import 'package:datn_learn_flutter/model/layoutdisplay.dart';
import 'package:datn_learn_flutter/ui/demo/display/list/listone.dart';
import 'package:datn_learn_flutter/ui/demo/display/list/listtow.dart';
import 'package:datn_learn_flutter/ui/demo/display/login/loginone.dart';
import 'package:datn_learn_flutter/ui/demo/display/login/loginthree.dart';
import 'package:datn_learn_flutter/ui/demo/display/login/logintow.dart';

class DisplayPresenter {
  List<LayoutDisplay> listDisplay = <LayoutDisplay>[];

  getDisplay() {
    listDisplay.add(
      LayoutDisplay(
        name: "LoginOne",
        subName: "Đăng nhập",
        widget: DisplayLoginOne(),
      ),
    );
    listDisplay.add(
      LayoutDisplay(
        name: "LoginTow",
        subName: "Đăng nhập",
        widget: DisplayLoginTow(),
      ),
    );
    listDisplay.add(
      LayoutDisplay(
        name: "LoginThree",
        subName: "Đăng nhập",
        widget: DisplayLoginThree(),
      ),
    );
    listDisplay.add(
      LayoutDisplay(
        name: "ListOne",
        subName: "Danh sách",
        widget: DisplayListOne(),
      ),
    );
    listDisplay.add(
      LayoutDisplay(
        name: "ListTow",
        subName: "Danh sách",
        widget: DisplayListTow(),
      ),
    );
    listDisplay.add(
      LayoutDisplay(
          name: "LoginOne", subName: "Đăng nhập", widget: DisplayLoginOne()),
    );
    listDisplay.add(
      LayoutDisplay(
          name: "LoginOne", subName: "Đăng nhập", widget: DisplayLoginOne()),
    );
    listDisplay.add(
      LayoutDisplay(
          name: "LoginOne", subName: "Đăng nhập", widget: DisplayLoginOne()),
    );
    listDisplay.add(
      LayoutDisplay(
          name: "LoginOne", subName: "Đăng nhập", widget: DisplayLoginOne()),
    );
  }
}
