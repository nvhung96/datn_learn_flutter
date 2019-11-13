import 'package:datn_learn_flutter/ui/page/home/display/display_presenter.dart';
import 'package:flutter/material.dart';

class DisplayScreen extends StatefulWidget {
  @override
  _DisplayScreenState createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  DisplayPresenter _presenter;

  @override
  void initState() {
    _presenter = DisplayPresenter();
    _presenter.getDisplay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Giao diện"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Container(
          child: ListView.builder(
            itemCount: _presenter.listDisplay.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(_presenter.listDisplay[index].name),
                subtitle: Text(_presenter.listDisplay[index].subName),
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          _presenter.listDisplay[index].widget,
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
