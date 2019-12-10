import 'package:flutter/material.dart';

class DisplayListTow extends StatefulWidget {
  @override
  _DisplayListTowState createState() => _DisplayListTowState();
}

class _DisplayListTowState extends State<DisplayListTow> {
  List<ItemList> _list = <ItemList>[];

  bool checkedSearch = false;

  @override
  void initState() {
    checkedSearch = false;

    _list.add(ItemList(name: "Nguyễn Văn A", subName: "Mức độ hoàn thành :1"));
    _list.add(ItemList(name: "Nguyễn Văn B", subName: "Mức độ hoàn thành :2"));
    _list.add(ItemList(name: "Nguyễn Văn C", subName: "Mức độ hoàn thành :3"));
    _list.add(ItemList(name: "Nguyễn Văn D", subName: "Mức độ hoàn thành :4"));
    _list.add(ItemList(name: "Nguyễn Văn E", subName: "Mức độ hoàn thành :5"));
    _list.add(ItemList(name: "Nguyễn Văn F", subName: "Mức độ hoàn thành :6"));
    _list.add(ItemList(name: "Nguyễn Văn G", subName: "Mức độ hoàn thành :7"));
    _list.add(ItemList(name: "Nguyễn Văn H", subName: "Mức độ hoàn thành :8"));
    _list.add(ItemList(name: "Nguyễn Văn I", subName: "Mức độ hoàn thành :9"));
    _list.add(ItemList(name: "Nguyễn Văn J", subName: "Mức độ hoàn thành :10"));
    _list.add(ItemList(name: "Nguyễn Văn K", subName: "Mức độ hoàn thành :11"));
    _list.add(ItemList(name: "Nguyễn Văn L", subName: "Mức độ hoàn thành :12"));
    _list.add(ItemList(name: "Nguyễn Văn M", subName: "Mức độ hoàn thành :13"));
    _list.add(ItemList(name: "Nguyễn Văn N", subName: "Mức độ hoàn thành :14"));
    _list.add(ItemList(name: "Nguyễn Văn O", subName: "Mức độ hoàn thành :15"));
    _list.add(ItemList(name: "Nguyễn Văn P", subName: "Mức độ hoàn thành :16"));
    _list.add(ItemList(name: "Nguyễn Văn Q", subName: "Mức độ hoàn thành :17"));
    _list.add(ItemList(name: "Nguyễn Văn R", subName: "Mức độ hoàn thành :18"));
    _list.add(ItemList(name: "Nguyễn Văn S", subName: "Mức độ hoàn thành :19"));
    _list.add(ItemList(name: "Nguyễn Văn T", subName: "Mức độ hoàn thành :20"));
    _list.add(ItemList(name: "Nguyễn Văn V", subName: "Mức độ hoàn thành :21"));
    _list.add(ItemList(name: "Nguyễn Văn W", subName: "Mức độ hoàn thành :22"));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: checkedSearch
            ? TextFormField(
                decoration: InputDecoration(
                    hintText: "search",
                    hintStyle: TextStyle(color: Colors.blue.shade200),
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.lock,
                      color: Colors.blue,
                    )),
              )
            : Text("Thông tin"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
                checkedSearch = !checkedSearch;
              });
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: ListView.builder(
            itemCount: _list.length,
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                key: UniqueKey(),
                onDismissed: (direction) {
                  setState(() {
                    _list.removeAt(index);
                  });
                },
                child: Card(
                  child: ListTile(
                    title: Text("${_list[index].name}"),
                    subtitle: Text("${_list[index].subName}"),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class ItemList {
  String name;
  String subName;

  ItemList({this.name, this.subName});
}
