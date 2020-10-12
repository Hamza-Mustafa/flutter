import 'package:flutter/material.dart';
// Check Box

void main() {
  runApp(checkBox());
}

class checkBox extends StatefulWidget {
  @override
  _checkBoxState createState() => _checkBoxState();
}

class _checkBoxState extends State<checkBox> {
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: new Checkbox(
              value: checkValue,
              onChanged: (bool val) {
                setState(() {
                  checkValue = val;
                  print(checkValue);
                });
              }),
        ),
      ),
    );
  }
}
