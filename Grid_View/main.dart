import 'package:flutter/material.dart';

// Grid View

void main() {
  runApp(myGridView());
}

class myGridView extends StatefulWidget {
  @override
  _myGridViewState createState() => _myGridViewState();
}

class _myGridViewState extends State<myGridView> {
  List<int> items = new List();
  @override
  void initState() {
    for (int i = 0; i <= 50; i++) {
      items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
      body: new GridView.builder(
          itemCount: items.length,
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              color: Colors.blue,
              child: new Padding(padding: const EdgeInsets.all(20.0)),
            );
          }),
    ));
  }
}
