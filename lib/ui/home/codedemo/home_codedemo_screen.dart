import 'package:datn_learn_flutter/ui/home/codedemo/home_codedemo_presenter.dart';
import 'package:flutter/material.dart';

class CodeDemoScreen extends StatefulWidget {
  @override
  _CodeDemoScreenState createState() => _CodeDemoScreenState();
}

class _CodeDemoScreenState extends State<CodeDemoScreen> {
  HomeDemoCodePresenter _presenter;

  @override
  void initState() {
    _presenter = HomeDemoCodePresenter();
    _presenter.getPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Code Demo"),
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
            itemCount: _presenter.listCodeDemos.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text("${_presenter.listCodeDemos[index].title}"),
                subtitle: Text("${_presenter.listCodeDemos[index].subTitle}"),
                trailing: Icon(Icons.favorite_border),
                onTap: () {
                  _presenter.pushName(context: context, index: index);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
