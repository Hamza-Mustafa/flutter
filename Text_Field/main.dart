//main.dart
import 'package:flutter/material.dart';

// Text Field

void main() {
  runApp(textField());
}

class textField extends StatefulWidget {
  @override
  _textFieldState createState() => _textFieldState();
}

class _textFieldState extends State<textField> {
  String ptext = '';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'text Field Demo',
        home: new Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.green,
            title: new Text('TextField Demo'),
          ),
          body: new Column(
            children: <Widget>[
              new TextField(
                // onChanged: (String txt) {
                //   setState(() {
                //     ptext = txt;
                //   });
                // },
                onSubmitted: (String txt) {
                  setState(() {
                    ptext = txt;
                  });
                },
                decoration: new InputDecoration(
                    hintText: 'Type Something', labelText: 'Full Name'),
              ),
              new Text(ptext),
            ],
          ),
        ));
  }
}
