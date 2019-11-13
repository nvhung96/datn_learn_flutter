import 'package:flutter/material.dart';

class DemoLayoutBuilder extends StatefulWidget {
  @override
  _DemoLayoutBuilderState createState() => _DemoLayoutBuilderState();
}

class _DemoLayoutBuilderState extends State<DemoLayoutBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return Container(
              child: Center(
                child: Text("One Widget"),
              ),
            );
          } else {
            return Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Center(child: Text("Two Widget")),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.purpleAccent,
                      child: Center(
                        child: Text("One Widget"),
                      ),
                    ),
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
