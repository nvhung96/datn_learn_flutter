import 'package:flutter/material.dart';

class DemoScaffold extends StatefulWidget {
  @override
  _DemoScaffoldState createState() => _DemoScaffoldState();
}

class _DemoScaffoldState extends State<DemoScaffold> {
  bool checked = true;
  bool checkedBottom = true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: checkedBottom
                ? Icon(Icons.file_upload)
                : Icon(Icons.file_download),
            onPressed: () => setState(() => checkedBottom = !checkedBottom),
          )
        ],
      ),
      body: Center(child: Text('Scaffold')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => checked = !checked),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation:
          checked ? FloatingActionButtonLocation.centerDocked : null,
      bottomNavigationBar: checkedBottom
          ? BottomAppBar(
              shape: const CircularNotchedRectangle(),
              child: Container(
                height: 50.0,
              ),
            )
          : null,
    );
  }
}
