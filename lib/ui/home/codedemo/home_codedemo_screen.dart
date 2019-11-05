import 'package:datn_learn_flutter/model/item_listmain.dart';
import 'package:datn_learn_flutter/ui/home/codedemo/home_codedemo_presenter.dart';
import 'package:datn_learn_flutter/utils/constants.dart';
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
    _presenter.setConText(context);
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: COLOR_MAIN_CODEDEMO,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Container(
              child: _buildPanel(),
            ),
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
            _presenter.dataListMain[index].isExpanded = !isExpanded;
          },
        );
      },
      children:
          _presenter.dataListMain.map<ExpansionPanel>((ItemListMain item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(
                item.headerValue,
                style:
                    TextStyle(color: isExpanded ? Colors.blue : Colors.black),
              ),
            );
          },
          body: item.getBody(),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
