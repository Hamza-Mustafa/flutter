import 'package:flutter/material.dart';

// App Bar Properties

void main() {
  runApp(customAppBar());
}

class customAppBar extends StatefulWidget {
  @override
  _customAppBarState createState() => _customAppBarState();
}

class _customAppBarState extends State<customAppBar> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.teal,
          title: new Text('AppBar Widget'),
          centerTitle: true,
          elevation: 20.0,
          toolbarHeight: 50,
          toolbarOpacity: 0.5,
          //titleSpacing: 20,
        ),
      ),
    );
  }
}
