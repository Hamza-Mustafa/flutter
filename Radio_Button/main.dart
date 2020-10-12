import 'package:flutter/material.dart';
// Radio Button

void main() {
  runApp(radioBt());
}

class radioBt extends StatefulWidget {
  @override
  _radioBtState createState() => _radioBtState();
}

class _radioBtState extends State<radioBt> {
  int radioValue = 0;

  void method(value) {
    setState(() {
      radioValue = value;
      print(radioValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Radio(
                  value: 1,
                  groupValue: radioValue,
                  onChanged: (int rval) {
                    method(rval);
                  }),
              new Radio(
                  value: 2,
                  groupValue: radioValue,
                  onChanged: (int rval) {
                    method(rval);
                  }),
              new Radio(
                  value: 3,
                  groupValue: radioValue,
                  onChanged: (int rval) {
                    method(rval);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
