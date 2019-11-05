import 'package:flutter/material.dart';

class DemoButton extends StatefulWidget {
  @override
  _DemoButtonState createState() => _DemoButtonState();
}

class _DemoButtonState extends State<DemoButton> {
  String text = "";
  bool checked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const RaisedButton(
              onPressed: null,
              child: Text(
                  'Disabled Button',
                  style: TextStyle(fontSize: 20)
              ),
            ),
            const SizedBox(height: 30),
            RaisedButton(
              onPressed: () {},
              child: const Text(
                  'Enabled Button',
                  style: TextStyle(fontSize: 20)
              ),
            ),
            const SizedBox(height: 30),
            RaisedButton(
              onPressed: () {},
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                    'Gradient Button',
                    style: TextStyle(fontSize: 20)
                ),
              ),
            ),
            Text("$text"),
            SizedBox(
              height: 50.0,
            ),
            _raisedButton(),
            SizedBox(
              height: 10.0,
            ),
            _flatButton(),
            SizedBox(
              height: 10.0,
            ),
            _iconButton(),
            SizedBox(
              height: 10.0,
            ),
            _outlineButton(),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _raisedButton() {
    return Column(
      children: <Widget>[
        Text(
          "RaisedButton:",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 15.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Button"),
              onPressed: () {
                setState(() {
                  text = "RaisedButton";
                });
              },
            ),
            SizedBox(
              width: 50.0,
            ),
            RaisedButton.icon(
              label: Text("Button"),
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  text = "Icon RaisedButton";
                });
              },
            ),
            SizedBox(
              width: 50.0,
            ),
            RaisedButton(
              child: Text("Button"),
              onPressed: null,
            ),
          ],
        ),
      ],
    );
  }

  Widget _flatButton() {
    return Column(
      children: <Widget>[
        Text(
          "FlatButton:",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 15.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text("Button"),
              onPressed: () {
                setState(() {
                  text = "FlatButton";
                });
              },
            ),
            SizedBox(
              width: 50.0,
            ),
            FlatButton.icon(
              label: Text("Button"),
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  text = "Icon FlatButton";
                });
              },
            ),
            SizedBox(
              width: 50.0,
            ),
            FlatButton(
              child: Text("Button"),
              onPressed: null,
            ),
          ],
        ),
      ],
    );
  }

  Widget _iconButton() {
    return Column(
      children: <Widget>[
        Text(
          "IconButton",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 15.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon:
                  checked ? Icon(Icons.favorite_border) : Icon(Icons.favorite),
              onPressed: () {
                setState(
                  () {
                    checked = !checked;
                    text = "IconButton";
                  },
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.android),
              onPressed: null,
            ),
          ],
        )
      ],
    );
  }

  Widget _outlineButton() {
    return Column(
      children: <Widget>[
        Text(
          "OutlineButton:",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 15.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlineButton(
              child: Text("Button"),
              onPressed: () {
                setState(() {
                  text = "FlatButton";
                });
              },
            ),
            SizedBox(
              width: 50.0,
            ),
            OutlineButton.icon(
              label: Text("Button"),
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  text = "Icon FlatButton";
                });
              },
            ),
            SizedBox(
              width: 50.0,
            ),
            OutlineButton(
              child: Text("Button"),
              onPressed: null,
            ),
          ],
        ),
      ],
    );
  }
}
