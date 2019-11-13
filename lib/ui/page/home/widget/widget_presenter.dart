import 'package:datn_learn_flutter/model/item_listmain.dart';
import 'package:datn_learn_flutter/ui/demo/widget/basics/Image.dart';
import 'package:datn_learn_flutter/ui/demo/widget/basics/appbar.dart';
import 'package:datn_learn_flutter/ui/demo/widget/basics/button.dart';
import 'package:datn_learn_flutter/ui/demo/widget/basics/checked_radio.dart';
import 'package:datn_learn_flutter/ui/demo/widget/basics/container.dart';
import 'package:datn_learn_flutter/ui/demo/widget/basics/icon.dart';
import 'package:datn_learn_flutter/ui/demo/widget/basics/scaffold.dart';
import 'package:datn_learn_flutter/ui/demo/widget/basics/slider.dart';
import 'package:datn_learn_flutter/ui/demo/widget/basics/text.dart';
import 'package:datn_learn_flutter/ui/demo/widget/basics/text_field.dart';
import 'package:datn_learn_flutter/ui/demo/widget/layout_contains_alot_widget/column.dart';
import 'package:datn_learn_flutter/ui/demo/widget/layout_contains_alot_widget/flow.dart';
import 'package:datn_learn_flutter/ui/demo/widget/layout_contains_alot_widget/gridview.dart';
import 'package:datn_learn_flutter/ui/demo/widget/layout_contains_alot_widget/layout_builder.dart';
import 'package:datn_learn_flutter/ui/demo/widget/layout_contains_alot_widget/listview.dart';
import 'package:datn_learn_flutter/ui/demo/widget/layout_contains_alot_widget/listviewbiulder.dart';
import 'package:datn_learn_flutter/ui/demo/widget/layout_contains_alot_widget/row.dart';
import 'package:datn_learn_flutter/ui/demo/widget/layout_contains_alot_widget/stack.dart';
import 'package:datn_learn_flutter/ui/demo/widget/layout_contains_alot_widget/table.dart';
import 'package:datn_learn_flutter/ui/demo/widget/layout_contains_one_widget/align.dart';
import 'package:datn_learn_flutter/ui/demo/widget/newapp/hello_flutter.dart';
import 'package:datn_learn_flutter/ui/show_code/show_code_screen.dart';
import 'package:datn_learn_flutter/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidGetPresenter {
  BuildContext context;
  List<ItemListMain> dataListMain = <ItemListMain>[];

  void pushName(String widget) {
    Navigator.of(context).pushNamed("/$widget");
  }

  Future pushCode({Widget codeDemo, String path}) async {
    Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (BuildContext context) =>
                new ShowCodeDemo(codeDemo: codeDemo, path: path)));
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
                pushCode(codeDemo: DemoAppBar(), path: PATH_BASICS_APPBAR);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Container"),
              subtitle: Text("Có tác dụng bao bọc 1 widget con"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(
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
                pushCode(codeDemo: DemoImage(), path: PATH_BASICS_IMAGE);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Scaffold"),
              subtitle: Text("Khung chứa tất cả các widget con"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(codeDemo: DemoScaffold(), path: PATH_BASICS_SCAFFOLD);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Text"),
              subtitle: Text("Hiển thị text"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(codeDemo: DemoText(), path: PATH_BASICS_TEXT);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Icon"),
              subtitle: Text("Hiển thị icon"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(codeDemo: DemoIcon(), path: PATH_BASICS_ICON);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Button"),
              subtitle: Text("Nút bấm cho người dùng tương tác"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(codeDemo: DemoButton(), path: PATH_BASICS_BUTTON);
              },
            ),
            Divider(),
            ListTile(
              title: Text("TextFeild"),
              subtitle: Text("Dùng để nhập dữ liệu người dùng"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(
                    codeDemo: DemoTextField(), path: PATH_BASICS_TEXT_FIELD);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Checkes_Radion"),
              subtitle: Text("Sử dụng khi có nhiều hoặc 1 lựa chọn"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(
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
                pushCode(codeDemo: DemoSlider(), path: PATH_BASICS_SLIDER);
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
                pushCode(codeDemo: DemoFlutter(), path: PATH_ONE_ALIGN);
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
                pushCode(codeDemo: DemoAlign(), path: PATH_ONE_ALIGN);
              },
            )
          ],
        ),
      ),
    );
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
                pushCode(codeDemo: DemoColumn(), path: PATH_A_LOT_COLUMN);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Row"),
              subtitle: Text(
                  "Hiển thị các witged theo hướng ngang nằm trong phạm vi của witged cha"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(codeDemo: DemoRow(), path: PATH_A_LOT_ROW);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Flow"),
              subtitle: Text("Chưa biết"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(codeDemo: DemoFlow(), path: PATH_A_LOT_FLOW);
              },
            ),
            Divider(),
            ListTile(
              title: Text("LayoutBuider"),
              subtitle: Text("Chưa biết"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(
                    codeDemo: DemoLayoutBuilder(),
                    path: PATH_A_LOT_LAYOUT_BUILDER);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Stack"),
              subtitle: Text("Xếp các Widget chồng lên nhau"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(codeDemo: DemoStack(), path: PATH_A_LOT_STACK);
              },
            ),
            Divider(),
            ListTile(
              title: Text("ListView"),
              subtitle: Text("Thanh cuộn giới hạn danh sách"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(codeDemo: DemoListView(), path: PATH_A_LOT_LIST_VIEW);
              },
            ),
            Divider(),
            ListTile(
              title: Text("ListViewBuilder"),
              subtitle: Text("Thanh cuộn không giới hạn danh sách"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(
                    codeDemo: DemoListViewBuilder(),
                    path: PATH_A_LOT_LIST_VIEW_BUILDER);
              },
            ),
            Divider(),
            ListTile(
              title: Text("GridView"),
              subtitle: Text("Thanh cuộn với nhiều hàng"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(codeDemo: DemoGridView(), path: PATH_A_LOT_GRID_VIEW);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Table"),
              subtitle: Text("Bảng biểu"),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                pushCode(codeDemo: DemoTable(), path: PATH_A_LOT_TABLE);
              },
            ),
          ],
        ),
      ),
    );
  }
}
