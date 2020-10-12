import 'package:flutter/material.dart';
// Switch Button

void main() {
  runApp(switchBt());
}

class switchBt extends StatefulWidget {
  @override
  _switchBtState createState() => _switchBtState();
}

class _switchBtState extends State<switchBt> {
  bool switchVal = false;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: new Switch(
              value: switchVal,
              onChanged: (bool val) {
                setState(() {
                  switchVal = val;
                  print(switchVal);
                });
              }),
        ),
      ),
    );
  }
}
