import 'package:flutter/material.dart';

class DemoAlign extends StatefulWidget {
  static final String path = "lib/ui/code_demo/layout_contains_one_widget/align.dart";

  @override
  _DemoAlignState createState() => _DemoAlignState();
}

class _DemoAlignState extends State<DemoAlign> {
  Alignment _textAlignment = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 12, right: 12, top: 12),
              height: 300,
              color: Colors.lightBlue,
              width: MediaQuery.of(context).size.width,
              child: Align(
                alignment: _textAlignment,
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Text(
                    'Position Me',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
            divider(context),
            Container(
              margin: EdgeInsets.only(left: 12, right: 12),
              child: Wrap(
                children: <Widget>[
                  _OptionItem(Alignment.center, _textAlignment,
                      _onAlignmentChanged, 'Center'),
                  _OptionItem(Alignment.topLeft, _textAlignment,
                      _onAlignmentChanged, 'Top Left'),
                  _OptionItem(Alignment.bottomRight, _textAlignment,
                      _onAlignmentChanged, 'Bottom Right'),
                  _OptionItem(Alignment.bottomLeft, _textAlignment,
                      _onAlignmentChanged, 'Bottom left'),
                  _OptionItem(Alignment.topRight, _textAlignment,
                      _onAlignmentChanged, 'Top Right'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _onAlignmentChanged(Alignment value) => setState(() {
        _textAlignment = value;
      });
}

class _OptionItem<T> extends StatelessWidget {
  const _OptionItem(this.value, this.groupValue, this.onChanged, this.title);

  final String title;
  final T value;
  final T groupValue;
  final ValueChanged<T> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Radio<T>(
            value: value,
            groupValue: groupValue,
            activeColor: Colors.lightBlue,
            onChanged: onChanged),
        GestureDetector(
          onTap: () {
            onChanged(value);
          },
          child: Text(
            title,
            style: TextStyle(fontSize: 14.0),
          ),
        ),
      ],
    );
  }
}

Container divider(BuildContext context) => Container(
      child: Divider(),
      margin: EdgeInsets.only(left: 10, right: 10, top: 14),
    );
