import 'package:flutter/material.dart';
//Row And Column Widget

void main() {
  runApp(rowAndColumn());
}

class rowAndColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "MyApplication",
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Row & Column Data'),
          ),
          body: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('This'),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text('This'),
                  new Text('is'),
                  new Text('column'),
                ],
              ),
              new Text('Row'),
            ],
          )),
    );
  }
}
