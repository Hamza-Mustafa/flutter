import 'package:flutter/material.dart';

// Raise And Flat Button

void main() {
  runApp(buttonWidget());
}

class buttonWidget extends StatefulWidget {
  @override
  _buttonWidgetState createState() => _buttonWidgetState();
}

class _buttonWidgetState extends State<buttonWidget> {
  String ptext = '';
  void method1(value) {
    setState(() {
      ptext = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'button widget app',
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text('Button Widget App'),
        ),
        body: new Column(
          children: <Widget>[
            new RaisedButton(
              onPressed: () {
                method1('You Pressed Raised Button');
              },
              child: new Text('Raised Button'),
            ),
            new FlatButton(
                onPressed: () {
                  method1('You Pressed Flat Button');
                },
                child: new Text('Flat Button')),
            new Text(ptext),
          ],
        ),
      ),
    );
  }
}
