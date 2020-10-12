import 'package:flutter/material.dart';

void main() {
  runApp(hamzaStateFull());
}

//stful than press enter
class hamzaStateFull extends StatefulWidget {
  @override
  _hamzaStateFullState createState() => _hamzaStateFullState();
}

class _hamzaStateFullState extends State<hamzaStateFull> {
  String mytext = '';

  @override
  void initState() {
    // TODO: implement initState
    mytext = 'Click on this button';
    super.initState();
  }

  void method1() {
    setState(() {
      mytext = 'The Text is been changed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'StateFull Widget Demo',
        home: new Scaffold(
          body: new Center(
            child: new RaisedButton(
              onPressed: () {
                method1();
              },
              child: new Text(mytext),
            ),
          ),
        ));
  }
}
