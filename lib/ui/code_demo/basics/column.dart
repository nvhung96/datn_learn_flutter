import 'package:flutter/material.dart';

class DemoColumn extends StatefulWidget {
  @override
  _DemoColumnState createState() => _DemoColumnState();
}

class _DemoColumnState extends State<DemoColumn> {
  int _isRadioCheckListMain;
  int _isRadioCheckListCross;

  @override
  void initState() {
    _isRadioCheckListMain = 1;
    _isRadioCheckListCross = 4;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              width: 350.0,
              color: Colors.greenAccent,
              child: Column(
                mainAxisAlignment: _isRadioCheckListMain == 1
                    ? MainAxisAlignment.start
                    : (_isRadioCheckListMain == 2
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.end),
                crossAxisAlignment: _isRadioCheckListCross == 4
                    ? CrossAxisAlignment.start
                    : (_isRadioCheckListCross == 5
                        ? CrossAxisAlignment.center
                        : CrossAxisAlignment.end),
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 50.0,
                    child: Center(child: Text("1")),
                    color: Colors.red,
                  ),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    child: Center(child: Text("2")),
                    color: Colors.orange,
                  ),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    child: Center(child: Text("3")),
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    child: Center(child: Text("4")),
                    color: Colors.green,
                  ),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    child: Center(child: Text("5")),
                    color: Colors.blue,
                  ),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    child: Center(child: Text("6")),
                    color: Colors.brown,
                  ),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    child: Center(child: Text("7")),
                    color: Colors.deepPurple,
                  ),
                ],
              ),
            ),
          ),
          Text(" MainAxisAlignment: (Xếp vị trí column theo chiều dọc)"),
          RaisedButton(
            child: Text(_isRadioCheckListMain == 1
                ? "Trên"
                : (_isRadioCheckListMain == 2 ? "Giữa" : "Dưới")),
            onPressed: () {
              setState(() {
                _isRadioCheckListMain = _isRadioCheckListMain == 1
                    ? 2
                    : (_isRadioCheckListMain == 2 ? 3 : 1);
              });
            },
          ),
          Text(" CrossAxisAlignment: (Xếp vị trí column theo chiều ngang)"),
          RaisedButton(
            child: Text(_isRadioCheckListCross == 4
                ? "Trái"
                : (_isRadioCheckListCross == 5 ? "Giữa" : "Phải")),
            onPressed: () {
              setState(() {
                _isRadioCheckListCross = _isRadioCheckListCross == 4
                    ? 5
                    : (_isRadioCheckListCross == 5 ? 6 : 4);
              });
            },
          ),
        ],
      ),
    );
  }
}
