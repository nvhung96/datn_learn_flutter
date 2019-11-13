import 'package:flutter/material.dart';

class DemoAppBar extends StatefulWidget {
  @override
  _DemoAppBarState createState() => _DemoAppBarState();
}

class _DemoAppBarState extends State<DemoAppBar> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  SnackBar snackBar;
  bool checkedBackgroundColor;

  @override
  void initState() {
    snackBar = const SnackBar(content: Text('Showing Snackbar'));
    checkedBackgroundColor = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: checkedBackgroundColor ? Colors.white : Colors.black,
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            tooltip: 'IconBotton Add',
            onPressed: () {
              scaffoldKey.currentState.showSnackBar(snackBar);
            },
          ),
          IconButton(
            icon: const Icon(Icons.autorenew),
            tooltip: 'Next BackgroundColor',
            onPressed: () {
              setState(() {
                checkedBackgroundColor = !checkedBackgroundColor;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Text',
          style: TextStyle(
              fontSize: 24,
              color: checkedBackgroundColor ? Colors.black : Colors.white),
        ),
      ),
    );
  }
}
