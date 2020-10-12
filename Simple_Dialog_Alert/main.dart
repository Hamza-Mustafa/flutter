import 'package:flutter/material.dart';
// Simple Dialog with choices Alert

void main() {
  runApp(new MaterialApp(home: new simpleDialog()));
}

class simpleDialog extends StatefulWidget {
  @override
  _simpleDialogState createState() => _simpleDialogState();
}

class _simpleDialogState extends State<simpleDialog> {
  SimpleDialog _text;

  void Dialog() {
    _text = new SimpleDialog(
      title: new Text('Choose From One:'),
      children: <Widget>[
        new SimpleDialogOption(
          child: new Text('Yes'),
          onPressed: () {
            print('Yes');
          },
        ),
        new SimpleDialogOption(
          child: new Text('No'),
          onPressed: () {
            print('No');
          },
        ),
        new SimpleDialogOption(
          child: new Text('Maybe'),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );

    showDialog(context: context, child: _text);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            Dialog();
          },
          child: new Text('Show Simple Dialog'),
        ),
      ),
    );
  }
}
