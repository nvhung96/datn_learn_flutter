import 'package:datn_learn_flutter/model/code_demo.dart';
import 'package:flutter/cupertino.dart';

class HomeDemoCodePresenter {
  List<CodeDemo> listCodeDemos = <CodeDemo>[];

  void pushName({BuildContext context, int index}) {
    Navigator.of(context).pushNamed("${listCodeDemos[index].widget}");
  }

  void getPage() {
    listCodeDemos.add(CodeDemo(
      title: "App Flutter",
      subTitle: "Ứng dụng đầu tiền",
      widget: "/appdellw",
    ));
    listCodeDemos.add(CodeDemo(
      title: "Witged_Column",
      subTitle: "Hiển thị các witged theo hướng đứng",
      widget: "/column",
    ));
    listCodeDemos.add(CodeDemo(
      title: "Witged_Row",
      subTitle: "Hiển thị các witged theo hướng ngang",
      widget: "/row",
    ));
    listCodeDemos.add(CodeDemo(
      title: "Witged_Text",
      subTitle: "Hiển thị ",
      widget: "/text",
    ));
    listCodeDemos.add(CodeDemo(
      title: "Witget_Icon",
      subTitle: "Hiển thị icon",
      widget: "/icon",
    ));
    listCodeDemos.add(CodeDemo(
      title: "Witget_TextField",
      subTitle: "Cho người dùng nhập thông tin",
      widget: "/textfield",
    ));
    listCodeDemos.add(CodeDemo(
      title: "Witget_Button",
      subTitle: "Nút bấm cho người dùng click",
      widget: "/button",
    ));
  }
}
