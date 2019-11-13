import 'package:flutter/material.dart';

class DemoListViewBuilder extends StatefulWidget {
  @override
  _DemoListViewBuilderState createState() => _DemoListViewBuilderState();
}

class _DemoListViewBuilderState extends State<DemoListViewBuilder> {
  List<Item> _list = <Item>[];

  @override
  void initState() {
    for (int i = 0; i < 20; i++) {
      _list.add(Item(
          title: "TITLE $i", subTitle: "Click và giữ để thấy sự thay đổi"));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Builder"),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: _list.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: _list[index].checkOnLongClick
                  ? Colors.greenAccent
                  : Colors.white,
              child: ListTile(
                title: Text("${_list[index].title}"),
                subtitle: Text("${_list[index].subTitle}"),
                leading: Icon(Icons.android),
                trailing: !_list[index].checkOnClick
                    ? Icon(Icons.favorite_border)
                    : Icon(Icons.favorite, color: Colors.red),
                onTap: () => setState(() =>
                    _list[index].checkOnClick = !_list[index].checkOnClick),
                onLongPress: () => setState(() => _list[index]
                    .checkOnLongClick = !_list[index].checkOnLongClick),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Item {
  String title;
  String subTitle;
  bool checkOnClick;
  bool checkOnLongClick;

  Item(
      {this.title,
      this.subTitle,
      this.checkOnClick = false,
      this.checkOnLongClick = false});
}
