import 'package:datn_learn_flutter/status/status_login.dart';
import 'package:datn_learn_flutter/ui/page/home/code/code_demo_screen.dart';
import 'package:datn_learn_flutter/ui/page/home/display/display_screen.dart';
import 'package:datn_learn_flutter/ui/page/home/home_presenter.dart';
import 'package:datn_learn_flutter/ui/page/home/widget/widget_screen.dart';
import 'package:datn_learn_flutter/ui/page/page_login_presenter.dart';
import 'package:datn_learn_flutter/utils/constants.dart';
import 'package:datn_learn_flutter/utils/oval-right-clipper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback upDataStatus;
  final PageLoginPresenter pageLoginPresenter;

  const HomeScreen({Key key, this.upDataStatus, this.pageLoginPresenter})
      : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  String name = 'Nguyễn Việt Hùng';

  HomePresenter _presenter;

  @override
  void initState() {
    _presenter = HomePresenter();
    _controller = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _buildDrawer(),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          Center(
            child: CodeDemoScreen(),
          ),
          Center(
            child: WidGetScreen(),
          ),
          Center(
            child: DisplayScreen(),
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: COLOR_MAIN_DRAWER,
        child: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.book,
              ),
            ),
            Tab(
              icon: Icon(Icons.input),
            ),
            Tab(
              icon: Icon(Icons.transform),
            ),
          ],
        ),
      ),
    );
  }

  _buildDrawer() {
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 40),
          decoration: BoxDecoration(
              color: COLOR_MAIN_DRAWER,
              boxShadow: [BoxShadow(color: Colors.black45)],
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(50.0))),
          width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: new Text(
                      "$name",
                      style:
                          TextStyle(color: COLOR_TEXT_DRAWER, fontSize: 16.0),
                    ),
                    accountEmail: new Text(
                      'hungcntta@gmail.com',
                      style:
                          TextStyle(color: COLOR_TEXT_DRAWER, fontSize: 16.0),
                    ),
                    currentAccountPicture: new CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      child: new Text('M'),
                    ),
                    decoration: new BoxDecoration(color: COLOR_MAIN_DRAWER),
                    otherAccountsPictures: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.power_settings_new,
                          color: COLOR_TEXT_DRAWER,
                        ),
                        onPressed: () async {
                          await _presenter.signOut();
                          await _presenter.setUser(email: "", password: "");
                          widget.pageLoginPresenter
                              .setUser(userName: "", password: "");
                          widget.pageLoginPresenter
                              .setStatus(StatusLogin.LOG_IN);
                          widget.upDataStatus();
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  _buildRow(Icons.home, "Trang chủ"),
                  _buildDivider(),
                  _buildRow(Icons.person_pin, "Hồ Sơ của bạn"),
                  _buildDivider(),
                  _buildRow(Icons.settings, "Cài đặt"),
                  _buildDivider(),
                  _buildRow(Icons.email, "Liên hệ chúng tôi"),
                  _buildDivider(),
                  _buildRow(Icons.info_outline, "Thông tin ứng dụng"),
                  _buildDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: COLOR_TEXT_DRAWER,
    );
  }

  Widget _buildRow(IconData icon, String title) {
    final TextStyle tStyle =
        TextStyle(color: COLOR_TEXT_DRAWER, fontSize: 16.0);
    return ListTile(
      title: Text(
        title,
        style: tStyle,
      ),
      leading: new Icon(
        icon,
        color: COLOR_TEXT_DRAWER,
      ),
      onTap: () => {},
    );
  }
}
