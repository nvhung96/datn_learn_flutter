import 'package:flutter/material.dart';

class DemoListView extends StatefulWidget {
  @override
  _DemoListViewState createState() => _DemoListViewState();
}

class _DemoListViewState extends State<DemoListView> {
  bool _checked;

  @override
  void initState() {
    _checked = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.autorenew),
              onPressed: () => setState(() => _checked = !_checked),
            )
          ],
        ),
        body: Container(
          child: ListView(
            children: _checked
                ? <Widget>[
                    ListTile(
                      title: Text("Title A"),
                      subtitle: Text("SubTitle A"),
                      trailing: Icon(Icons.ac_unit),
                      leading: Icon(Icons.add),
                    ),
                    ListTile(
                      title: Text("Title B"),
                      subtitle: Text("SubTitle B"),
                      trailing: Icon(Icons.ac_unit),
                      leading: Icon(Icons.add),
                    ),
                    ListTile(
                      title: Text("Title C"),
                      subtitle: Text("SubTitle C"),
                      trailing: Icon(Icons.ac_unit),
                      leading: Icon(Icons.add),
                    ),
                    ListTile(
                      title: Text("Title D"),
                      subtitle: Text("SubTitle D"),
                      trailing: Icon(Icons.ac_unit),
                      leading: Icon(Icons.add),
                    ),
                  ]
                : getListTile(),
          ),
        ));
  }

  List<Widget> getListTile() {
    List<Widget> _listTile = <Widget>[];
    for (int i = 0; i < 20; i++) {
      _listTile.add(
        ListTile(
          title: Text("Title $i"),
          subtitle: Text("SubTitle $i"),
          trailing: Icon(Icons.ac_unit),
          leading: Icon(Icons.add),
        ),
      );
    }
    return _listTile;
  }
}
