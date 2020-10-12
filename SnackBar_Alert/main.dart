import 'package:flutter/material.dart';
// SnackBar Alert

void main() {
  runApp(new MaterialApp(home: new snackBar()));
}

class snackBar extends StatefulWidget {
  @override
  _snackBarState createState() => _snackBarState();
}

class _snackBarState extends State<snackBar> {
  final GlobalKey<ScaffoldState> _mykey = new GlobalKey<ScaffoldState>();

  void method1() {
    _mykey.currentState
        .showSnackBar(new SnackBar(content: new Text('Activated SnackBar')));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _mykey,
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            method1();
          },
          child: new Text('Click Me'),
        ),
      ),
    );
  }
}
