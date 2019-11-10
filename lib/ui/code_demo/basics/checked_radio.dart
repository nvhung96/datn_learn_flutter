import 'package:flutter/material.dart';

class DemoCheckedRadio extends StatefulWidget {
  @override
  _DemoCheckedRadioState createState() => _DemoCheckedRadioState();
}

class _DemoCheckedRadioState extends State<DemoCheckedRadio> {
  int _isRadio;
  String _textRadio;
  List<String> _listS = <String>[
    "java",
    "Andoid",
    "PHP",
    "Flutter",
  ];

  List<bool> _listChecked = <bool>[
    false,
    false,
    false,
    false,
  ];
  String _textChecked;

  @override
  void initState() {
    _isRadio = 0;
    _textRadio = "Ngôn ngữ yêu thích của bạn : ";
    _textChecked = "Ngôn ngữ bạn đã học : ";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checked_Radio"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(
              "Radio",
              style: TextStyle(fontSize: 20.0),
            ),
            Row(
              children: <Widget>[
                Text("Chọn ngôn ngữ bạn yêu thích:"),
              ],
            ),
            Row(
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: _isRadio,
                  onChanged: (int val) {
                    setState(() {
                      _isRadio = val;
                    });
                  },
                ),
                Text("${_listS[0]}"),
              ],
            ),
            Row(
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: _isRadio,
                  onChanged: (int val) {
                    setState(() {
                      _isRadio = val;
                    });
                  },
                ),
                Text("${_listS[1]}"),
              ],
            ),
            Row(
              children: <Widget>[
                Radio(
                  value: 2,
                  groupValue: _isRadio,
                  onChanged: (int val) {
                    setState(() {
                      _isRadio = val;
                    });
                  },
                ),
                Text("${_listS[2]}"),
              ],
            ),
            Row(
              children: <Widget>[
                Radio(
                  value: 3,
                  groupValue: _isRadio,
                  onChanged: (int val) {
                    setState(() {
                      _isRadio = val;
                    });
                  },
                ),
                Text("${_listS[3]}"),
              ],
            ),
            Row(
              children: <Widget>[
                Text("$_textRadio"),
              ],
            ),
            RaisedButton(
                child: Text("Radio"),
                onPressed: () {
                  setState(() {
                    _textRadio =
                        "Ngôn ngữ yêu thích của bạn : ${_listS[_isRadio]}";
                  });
                }),
            Text(
              "Checked",
              style: TextStyle(fontSize: 20.0),
            ),
            Row(
              children: <Widget>[
                Text("Chọn ngôn ngữ bạn đã học:"),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _listChecked[0],
                  onChanged: (bool cb) {
                    setState(() {
                      _listChecked[0] = cb;
                      print(_listChecked[0]);
                    });
                  },
                ),
                Text("${_listS[0]}"),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _listChecked[1],
                  onChanged: (bool cb) {
                    setState(() {
                      _listChecked[1] = cb;
                      print(_listChecked[1]);
                    });
                  },
                ),
                Text("${_listS[1]}"),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _listChecked[2],
                  onChanged: (bool cb) {
                    setState(() {
                      _listChecked[2] = cb;
                      print(_listChecked[2]);
                    });
                  },
                ),
                Text("${_listS[2]}"),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _listChecked[3],
                  onChanged: (bool cb) {
                    setState(() {
                      _listChecked[3] = cb;
                      print(_listChecked[3]);
                    });
                  },
                ),
                Text("${_listS[3]}"),
              ],
            ),
            Row(
              children: <Widget>[
                Text("$_textChecked"),
              ],
            ),
            RaisedButton(
                child: Text("Checked"),
                onPressed: () {
                  setState(() {
                    _textChecked = "Ngôn ngữ bạn đã học : ";
                    for (int i = 0; i < _listChecked.length; i++) {
                      if (_listChecked[i]) {
                        _textChecked = _textChecked + "${_listS[i]} ";
                      }
                    }
                  });
                })
          ],
        ),
      ),
    );
  }
}
