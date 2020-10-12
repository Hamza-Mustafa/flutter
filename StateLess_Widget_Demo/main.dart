import 'package:flutter/material.dart';

void main() {
  runApp(hamzaStateLess());
}

//stless than press enter
class hamzaStateLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'StateLess Widget Demo',
      home: new Scaffold(
        body: new Container(
          color: Colors.pink,
          child: new Container(
            color: Colors.yellow,
            margin: const EdgeInsets.all(20.0),
            child: new Container(
              color: Colors.purple,
              margin: const EdgeInsets.all(30.0),
            ),
          ),
        ),
      ),
    );
  }
}
