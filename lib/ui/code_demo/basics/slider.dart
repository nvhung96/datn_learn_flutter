import 'package:flutter/material.dart';

class DemoSlider extends StatefulWidget {
  @override
  _DemoSliderState createState() => _DemoSliderState();
}

class _DemoSliderState extends State<DemoSlider> {
  double _valSlider1;
  double _valSlider2;

  @override
  void initState() {
    _valSlider1 = 0.0;
    _valSlider2 = 40.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("Slider"),
            Slider(
              value: _valSlider1,
              onChanged: (double val) {
                setState(() {
                  _valSlider1 = val;
                });
              },
            ),
            Slider(
              value: _valSlider2,
              min: 0.0,
              max: 140.0,
              divisions: 7,
              label:
                  "${_valSlider2.toString().substring(0, _valSlider2.toString().length - 2)}",
              onChanged: (double val) {
                setState(() {
                  _valSlider2 = val;
                });
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('LinLinearProgressIndicator'),
            SizedBox(
              height: 20.0,
            ),
            LinearProgressIndicator(),
            SizedBox(
              height: 20.0,
            ),
            Text('CircularProgressIndicator'),
            SizedBox(
              height: 20.0,
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
