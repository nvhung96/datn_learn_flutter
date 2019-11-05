import 'package:datn_learn_flutter/model/code_demo.dart';
import 'package:datn_learn_flutter/model/item_listmain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeDemoCodePresenter {
  BuildContext context;
  List<ItemListMain> dataListMain = <ItemListMain>[];

  void pushName(String widget) {
    Navigator.of(context).pushNamed("/$widget");
  }

  void setConText(BuildContext context) {
    this.context = context;
  }

  void getPage() {
    dataListMain
        .add(ItemListMain(headerValue: "Widget cơ bản", body: getBasics()));
    dataListMain
        .add(ItemListMain(headerValue: "App đầu tiên", body: getNewApp()));
    dataListMain.add(
        ItemListMain(headerValue: "Layout chứa một widget", body: getLayoutContainsOneWidget()));
    dataListMain.add(ItemListMain(
        headerValue: "layout chứa nhiều Widget", body: getLayoutContainsALotWidget()));
  }

  Widget getBasics() {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            Divider(),
            ListTile(
              title: Text("Appbar"),
              subtitle: Text("Thanh hiển thị bên trên giao diện"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushName("appbar");
              },
            ),
            Divider(),
            ListTile(
              title: Text("Column"),
              subtitle: Text(
                  "Hiển thị các witged theo hướng đứng nằm trong phạm vi của witged cha"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushName("column");
              },
            ),
            Divider(),
            ListTile(
              title: Text("Row"),
              subtitle: Text(
                  "Hiển thị các witged theo hướng ngang nằm trong phạm vi của witged cha"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushName("row");
              },
            ),
            ListTile(
              title: Text("Container"),
              subtitle: Text("Có tác dụng bao bọc 1 widget con"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushName("container");
              },
            ),
            ListTile(
              title: Text("Image"),
              subtitle: Text("Hiển thị hình ảnh"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushName("image");
              },
            ),
            ListTile(
              title: Text("Scaffold"),
              subtitle: Text("Khung chứa tất cả các widget con"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushName("scaffold");
              },
            ),
            Divider(),
            ListTile(
              title: Text("Text"),
              subtitle: Text("Hiển thị text"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushName("text");
              },
            ),
            Divider(),
            ListTile(
              title: Text("Icon"),
              subtitle: Text("Hiển thị icon"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushName("icon");
              },
            ),
            Divider(),
            ListTile(
              title: Text("Button"),
              subtitle: Text("Nút bấm cho người dùng tương tác"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushName("button");
              },
            ),
            Divider(),
            ListTile(
              title: Text("TextFeild"),
              subtitle: Text("Dùng để nhập dữ liệu người dùng"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushName("textfield");
              },
            ),
            Divider(),
            ListTile(
              title: Text("Checkes_Radion"),
              subtitle: Text("Sử dụng khi có nhiều hoặc 1 lựa chọn"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushName("check_radio");
              },
            ),
            Divider(),
            ListTile(
              title: Text("Slider"),
              subtitle: Text("Thanh hiển thị trạng thái"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushName("slider");
              },
            )
          ],
        ),
      ),
    );
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
              onTap: () {
                pushName("helloflutter");
              },
            )
          ],
        ),
      ),
    );
  }

  Widget getLayoutContainsOneWidget() {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }

  Widget getLayoutContainsALotWidget() {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
