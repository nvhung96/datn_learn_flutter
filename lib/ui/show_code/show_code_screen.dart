import 'dart:math';

import 'package:bottomreveal/bottomreveal.dart';
import 'package:datn_learn_flutter/ui/show_code/code_highlighter.dart';
import 'package:datn_learn_flutter/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class MyCodeView extends StatefulWidget {
  final String filePath;

  MyCodeView({@required this.filePath});

  String get githubPath => '$githubRepo/blob/master/$filePath';

  @override
  MyCodeViewState createState() {
    return MyCodeViewState();
  }
}

class MyCodeViewState extends State<MyCodeView> {
  final BottomRevealController _menuController = BottomRevealController();
  double _textScaleFactor = 1.0;

  Widget _getCodeView(String codeContent, BuildContext context) {
    final SyntaxHighlighterStyle style =
        Theme.of(context).brightness == Brightness.dark
            ? SyntaxHighlighterStyle.darkThemeStyle()
            : SyntaxHighlighterStyle.lightThemeStyle();
    return Container(
      constraints: BoxConstraints.expand(),
      child: Scrollbar(
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: RichText(
              textScaleFactor: this._textScaleFactor,
              text: TextSpan(
                style: TextStyle(fontFamily: 'monospace', fontSize: 12.0),
                children: <TextSpan>[
                  DartSyntaxHighlighter(style).format(codeContent)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: rootBundle.loadString(widget.filePath) ??
          'lỗi khi tải source code từ đường dẫn ${widget.filePath}',
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            body: BottomReveal(
              openIcon: Icons.add,
              closeIcon: Icons.close,
              revealWidth: 70,
              revealHeight: 90,
              backColor: Color(0xff2D0C3F),
              frontColor: Colors.grey.shade200,
              rightContent: _buildRightMenu(),
              bottomContent: _buildBottomContent(),
              controller: _menuController,
              body: Padding(
                padding: EdgeInsets.only(
                    top: 40.0, left: 10.0, bottom: 10.0, right: 10.0),
                child: _getCodeView(snapshot.data, context),
              ),
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget _buildBottomContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          heroTag: "open",
          child: Icon(Icons.arrow_back),
          tooltip: 'Quay lại',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        SizedBox(
          width: 20.0,
        )
      ],
    );
  }

  Column _buildRightMenu() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        FloatingActionButton(
          heroTag: "copy",
          child: Icon(Icons.content_copy),
          tooltip: 'Copy link GitHub',
          onPressed: () async {
            await Clipboard.setData(ClipboardData(text: widget.githubPath));
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('Code link copied to Clipboard!'),
            ));
          },
        ),
        SizedBox(
          height: 10.0,
        ),
        FloatingActionButton(
          heroTag: "open",
          child: Icon(Icons.open_in_new),
          tooltip: 'Xem source code với GidHub',
          onPressed: () {
            url_launcher.launch(this.widget.githubPath);
          },
        ),
        SizedBox(
          height: 10.0,
        ),
        FloatingActionButton(
          heroTag: "zoom_out",
          child: Icon(Icons.zoom_out),
          tooltip: 'Thu nhỏ',
          onPressed: () => setState(() {
            this._textScaleFactor = max(0.8, this._textScaleFactor - 0.1);
          }),
        ),
        SizedBox(
          height: 10.0,
        ),
        FloatingActionButton(
          heroTag: "zoom_in",
          child: Icon(Icons.zoom_in),
          tooltip: 'Phóng to',
          onPressed: () => setState(() {
            this._textScaleFactor += 0.1;
          }),
        ),
      ],
    );
  }
}
