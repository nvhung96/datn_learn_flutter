import 'package:datn_learn_flutter/model/code_demo.dart';
import 'package:datn_learn_flutter/model/item_listmain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeDemoCodePresenter {
  List<CodeDemo> listCodeDemos = <CodeDemo>[];
  List<ItemListMain> dataListManin = <ItemListMain>[];

  void pushName({BuildContext context, int index}) {
    Navigator.of(context).pushNamed("${listCodeDemos[index].widget}");
  }

  void getPage() {
    dataListManin
        .add(ItemListMain(headerValue: "App đầu tiên", body: getNewApp()));
    dataListManin
        .add(ItemListMain(headerValue: "Widget cơ bản", body: getWidget()));
    dataListManin
        .add(ItemListMain(headerValue: "Amination Widget", body: getWidget()));
    listCodeDemos.add(CodeDemo(
      title: "App Flutter",
      subTitle: "Ứng dụng đầu tiền",
      widget: "/helloflutter",
    ));
    listCodeDemos.add(CodeDemo(
      title: "Witged_Text",
      subTitle: "Hiển thị text",
      widget: "/text",
    ));
    listCodeDemos.add(CodeDemo(
      title: "Witged_Icon",
      subTitle: "Hiển thị icon",
      widget: "/icon",
    ));
    listCodeDemos.add(CodeDemo(
      title: "Witged_Button",
      subTitle: "Các nút bấm thao tác với ứng dụng",
      widget: "/button",
    ));
    listCodeDemos.add(CodeDemo(
      title: "Witged_TextField",
      subTitle: "nhập thông tin",
      widget: "/textfield",
    ));
    listCodeDemos.add(CodeDemo(
      title: "Witged_Column",
      subTitle:
          "Hiển thị các witged theo hướng đứng nằm trong phạm vi của witged cha",
      widget: "/column",
    ));
    listCodeDemos.add(CodeDemo(
      title: "Witged_Row",
      subTitle:
          "Hiển thị các witged theo hướng ngang nằm trong phạm vi của witged cha",
      widget: "/row",
    ));
    listCodeDemos.add(CodeDemo(
      title: "Witged_Checkes_Radion",
      subTitle: "Sử dụng khi có nhiều hoặc 1 lựa chọn",
      widget: "/check_radio",
    ));
    listCodeDemos.add(CodeDemo(
      title: "Witged_Slider",
      subTitle: "Thanh hiển thị trạng thái",
      widget: "/slider",
    ));
  }

  Widget getNewApp() {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text("App Flutter"),
              subtitle: Text("Ứng dụng đầu tiên"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }

  Widget getWidget() {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            Divider(),
            ListTile(
              title: Text("App Flutter"),
              subtitle: Text("Ứng dụng đầu tiên"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text("App Flutter"),
              subtitle: Text("Ứng dụng đầu tiên"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text("App Flutter"),
              subtitle: Text("Ứng dụng đầu tiên"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text("App Flutter"),
              subtitle: Text("Ứng dụng đầu tiên"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text("App Flutter"),
              subtitle: Text("Ứng dụng đầu tiên"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text("App Flutter"),
              subtitle: Text("Ứng dụng đầu tiên"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text("App Flutter"),
              subtitle: Text("Ứng dụng đầu tiên"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text("App Flutter"),
              subtitle: Text("Ứng dụng đầu tiên"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text("App Flutter"),
              subtitle: Text("Ứng dụng đầu tiên"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
