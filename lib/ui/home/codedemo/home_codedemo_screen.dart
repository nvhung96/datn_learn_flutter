import 'package:datn_learn_flutter/model/item_listmain.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Container(
            child: _buildPanel(),
          ),
        ),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(
          () {
            _presenter.dataListManin[index].isExpanded = !isExpanded;
          },
        );
      },
      children:
          _presenter.dataListManin.map<ExpansionPanel>((ItemListMain item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: item.getBody(),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
