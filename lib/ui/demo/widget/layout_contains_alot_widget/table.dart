import 'package:flutter/material.dart';

class DemoTable extends StatefulWidget {
  @override
  _DemoTableState createState() => _DemoTableState();
}

class _DemoTableState extends State<DemoTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Table(
              border: TableBorder.all(),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: {
                0: FractionColumnWidth(.08),
                1: FractionColumnWidth(.4),
                2: FractionColumnWidth(.3),
                3: FractionColumnWidth(.2),
              },
              children: [
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(child: Text("STT")),
                  ),
                  Center(child: Text("Họ và tên")),
                  Center(child: Text("SĐT")),
                  Center(child: Text("Năm sinh")),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(child: Text("1")),
                  ),
                  Center(child: Text("Nguyễn Văn A")),
                  Center(child: Text("0987654321")),
                  Center(child: Text("1999")),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(child: Text("1")),
                  ),
                  Center(child: Text("Nguyễn Văn A")),
                  Center(child: Text("0987654321")),
                  Center(child: Text("1999")),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(child: Text("1")),
                  ),
                  Center(child: Text("Nguyễn Văn A")),
                  Center(child: Text("0987654321")),
                  Center(child: Text("1999")),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(child: Text("1")),
                  ),
                  Center(child: Text("Nguyễn Văn A")),
                  Center(child: Text("0987654321")),
                  Center(child: Text("1999")),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(child: Text("1")),
                  ),
                  Center(child: Text("Nguyễn Văn A")),
                  Center(child: Text("0987654321")),
                  Center(child: Text("1999")),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
