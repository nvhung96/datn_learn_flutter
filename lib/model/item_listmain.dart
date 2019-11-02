import 'package:flutter/material.dart';

class ItemListMain<T> {
  String headerValue;
  bool isExpanded;
  Widget body;

  ItemListMain({this.headerValue, this.isExpanded = false, this.body});

  Widget getBody() {
    return body;
  }
}
