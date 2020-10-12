
//// Drawer Menu Widget With Routes To New Page

//page1.dart
import 'package:flutter/material.dart';

class forwardPageClass extends StatelessWidget {
  final String ftext;
  forwardPageClass(this.ftext);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(ftext),
      ),
      body: new Center(
        child: new Text(ftext),
      ),
    );
  }
}
