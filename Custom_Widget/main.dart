import 'package:flutter/material.dart';

// Custom Widget
void main() {
  runApp(customWidget());
}

class customWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'My Custom Widget',
      home: new Scaffold(
        body: new Container(
          color: Colors.red,
          child: new Container(
            color: Colors.pink,
            margin: const EdgeInsets.all(15.0),
            child: new Container(
              color: Colors.blue,
              margin: const EdgeInsets.all(15.0),
              child: _customMthod(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _customMthod() {
    return new Container(
      color: Colors.black45,
      margin: const EdgeInsets.all(15.0),
    );
  }
}
