import 'package:datn_learn_flutter/model/item_listmain.dart';
import 'package:datn_learn_flutter/ui/code_demo/basics/Image.dart';
import 'package:datn_learn_flutter/ui/code_demo/basics/appbar.dart';
import 'package:datn_learn_flutter/ui/code_demo/basics/button.dart';
import 'package:datn_learn_flutter/ui/code_demo/basics/checked_radio.dart';
import 'package:datn_learn_flutter/ui/code_demo/basics/container.dart';
import 'package:datn_learn_flutter/ui/code_demo/basics/icon.dart';
import 'package:datn_learn_flutter/ui/code_demo/layout_contains_alot_widget/flow.dart';
import 'package:datn_learn_flutter/ui/code_demo/layout_contains_alot_widget/layout_builder.dart';
import 'package:datn_learn_flutter/ui/code_demo/layout_contains_alot_widget/row.dart';
import 'package:datn_learn_flutter/ui/code_demo/basics/scaffold.dart';
import 'package:datn_learn_flutter/ui/code_demo/basics/slider.dart';
import 'package:datn_learn_flutter/ui/code_demo/basics/text.dart';
import 'package:datn_learn_flutter/ui/code_demo/basics/text_field.dart';
import 'package:datn_learn_flutter/ui/code_demo/layout_contains_alot_widget/column.dart';
import 'package:datn_learn_flutter/ui/code_demo/layout_contains_alot_widget/stack.dart';
import 'package:datn_learn_flutter/ui/code_demo/layout_contains_one_widget/align.dart';
import 'package:datn_learn_flutter/ui/code_demo/newapp/hello_flutter.dart';
import 'package:datn_learn_flutter/ui/show_code_demo_screen.dart';
import 'package:datn_learn_flutter/utils/constants.dart';
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
    dataListMain.add(ItemListMain(
        headerValue: "Layout chứa một widget",
        body: getLayoutContainsOneWidget()));
    dataListMain.add(ItemListMain(
        headerValue: "layout chứa nhiều Widget",
        body: getLayoutContainsALotWidget()));
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
                pushCode(
                    name: "AppBar",
                    codeDemo: DemoAppBar(),
                    path: PATH_BASICS_APPBAR);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Container"),
              subtitle: Text("Có tác dụng bao bọc 1 widget con"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(
                    name: "Container",
                    codeDemo: DemoContainerFlutterLogo(),
                    path: PATH_BASICS_CONTAINER);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Image"),
              subtitle: Text("Hiển thị hình ảnh"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(
                    name: "Image",
                    codeDemo: DemoImage(),
                    path: PATH_BASICS_IMAGE);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Scaffold"),
              subtitle: Text("Khung chứa tất cả các widget con"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(
                    name: "Scafflod",
                    codeDemo: DemoScaffold(),
                    path: PATH_BASICS_SCAFFOLD);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Text"),
              subtitle: Text("Hiển thị text"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(
                    name: "Text", codeDemo: DemoText(), path: PATH_BASICS_TEXT);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Icon"),
              subtitle: Text("Hiển thị icon"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(
                    name: "Icon", codeDemo: DemoIcon(), path: PATH_BASICS_ICON);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Button"),
              subtitle: Text("Nút bấm cho người dùng tương tác"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(
                    name: "Button",
                    codeDemo: DemoButton(),
                    path: PATH_BASICS_BUTTON);
              },
            ),
            Divider(),
            ListTile(
              title: Text("TextFeild"),
              subtitle: Text("Dùng để nhập dữ liệu người dùng"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(
                    name: "TextField",
                    codeDemo: DemoTextField(),
                    path: PATH_BASICS_TEXT_FIELD);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Checkes_Radion"),
              subtitle: Text("Sử dụng khi có nhiều hoặc 1 lựa chọn"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(
                    name: "Checked_Radio",
                    codeDemo: DemoCheckedRadio(),
                    path: PATH_BASICS_CHECKED_RADIO);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Slider"),
              subtitle: Text("Thanh hiển thị trạng thái"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(
                    name: "Slider",
                    codeDemo: DemoSlider(),
                    path: PATH_BASICS_SLIDER);
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
            Divider(),
            ListTile(
              title: Text("App Flutter"),
              subtitle: Text("Ứng dụng đầu tiên"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(
                    name: "App Flutter",
                    codeDemo: DemoFlutter(),
                    path: PATH_ONE_ALIGN);
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
          children: <Widget>[
            Divider(),
            ListTile(
              title: Text("Align"),
              subtitle: Text("Align"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(
                    name: "Align", codeDemo: DemoAlign(), path: PATH_ONE_ALIGN);
              },
            )
          ],
        ),
      ),
    );
  }

  Future pushCode({String name, Widget codeDemo, String path}) async {
    Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (BuildContext context) =>
                new ShowCodeDemo(name: name, codeDemo: codeDemo, path: path)));
  }

  Widget getLayoutContainsALotWidget() {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            Divider(),
            ListTile(
              title: Text("Column"),
              subtitle: Text(
                  "Hiển thị các witged theo hướng đứng nằm trong phạm vi của witged cha"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(
                    name: "Column",
                    codeDemo: DemoColumn(),
                    path: PATH_A_LOT_COLUMN);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Row"),
              subtitle: Text(
                  "Hiển thị các witged theo hướng ngang nằm trong phạm vi của witged cha"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(
                    name: "Row", codeDemo: DemoRow(), path: PATH_A_LOT_ROW);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Flow"),
              subtitle: Text("Chưa biết"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(
                    name: "Flow", codeDemo: DemoFlow(), path: PATH_A_LOT_FLOW);
              },
            ),
            Divider(),
            ListTile(
              title: Text("LayoutBuider"),
              subtitle: Text("Chưa biết"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(
                    name: "LayoutBuider",
                    codeDemo: DemoLayoutBuilder(),
                    path: PATH_A_LOT_LAYOUT_BUIDER);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Stack"),
              subtitle: Text("Xếp các Widget chồng lên nhau"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(
                    name: "Stack",
                    codeDemo: DemoStack(),
                    path: PATH_A_LOT_STACK);
              },
            ),
          ],
        ),
      ),
    );
  }
}
