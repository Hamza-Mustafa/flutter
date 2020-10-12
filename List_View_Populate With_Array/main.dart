import 'package:flutter/material.dart';
//List View Populate With Array

void main() {
  runApp(myListViewArray());
}

class myListViewArray extends StatefulWidget {
  @override
  _myListViewArrayState createState() => _myListViewArrayState();
}

class _myListViewArrayState extends State<myListViewArray> {
  List<int> items = new List();
  @override
  void initState() {
    for (int i = 0; i < 30; i++) {
      items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Array List View',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Array List View'),
        ),
        body: new ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return new ListTile(
                title: new Text('item no :$index'),
                trailing: new Icon(Icons.arrow_forward),
              );
            }),
      ),
    );
  }
}
