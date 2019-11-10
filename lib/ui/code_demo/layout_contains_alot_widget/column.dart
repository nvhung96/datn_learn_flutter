import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoColumn extends StatefulWidget {
  @override
  _DemoColumnState createState() => _DemoColumnState();
}

class _DemoColumnState extends State<DemoColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column"),
      ),
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Deliver features faster'),
              Text('Craft beautiful UIs'),
              FlutterLogo(
                size: 100.0,
              ),
              Divider(
                color: Colors.green,
                height: 10.0,
                endIndent: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('We move under cover and we move as one'),
                  Text(
                      'Through the night, we have one shot to live another day'),
                  Text('We cannot let a stray gunshot give us away'),
                  Text(
                      'We will fight up close, seize the moment and stay in it'),
                  Text(
                      'It’s either that or meet the business end of a bayonet'),
                  Text('The code word is ‘Rochambeau,’ dig me?'),
                  Text('Rochambeau!',
                      style: DefaultTextStyle.of(context)
                          .style
                          .apply(fontSizeFactor: 2.0)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
