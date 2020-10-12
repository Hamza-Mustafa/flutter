import 'package:flutter/material.dart';
//List View Widget

void main() {
  runApp(myListView());
}

class myListView extends StatefulWidget {
  @override
  _myListViewState createState() => _myListViewState();
}

class _myListViewState extends State<myListView> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'List View',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('List Widget'),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text('Item 1'),
              trailing: new Icon(Icons.arrow_forward),
            ),
            new ListTile(
              title: new Text('Item 2'),
              trailing: new Icon(Icons.arrow_forward),
            ),
            new ListTile(
              title: new Text('Item 3'),
              trailing: new Icon(Icons.arrow_forward),
            ),
            new ListTile(
              title: new Text('Item 4'),
              trailing: new Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }
}
