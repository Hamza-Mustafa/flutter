import 'package:flutter/material.dart';

// App Bar leading And Actions

void main() {
  runApp(customAppBar());
}

class customAppBar extends StatefulWidget {
  @override
  _customAppBarState createState() => _customAppBarState();
}

class _customAppBarState extends State<customAppBar> {
  String passText = ' ';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('AppBar Widget'),
          leading: new Icon(Icons.menu),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.arrow_forward),
                onPressed: () {
                  setState(() {
                    passText = 'Arrow Icon Pressed';
                  });
                }),
            new IconButton(
                icon: new Icon(Icons.close),
                onPressed: () {
                  setState(() {
                    passText = 'Close Icon Pressed';
                  });
                })
          ],
        ),
        body: new Center(child: new Text(passText)),
      ),
    );
  }
}
