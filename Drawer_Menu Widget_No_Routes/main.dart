//main.dart
import 'package:flutter/material.dart';

// Drawer Menu Widget

void main() {
  runApp(new MaterialApp(home: new menuWidget()));
}

class menuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Drawer Menu Widget'),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Hamza Mustafa'),
              accountEmail: new Text('contact@appshap.co'),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.black,
                child: new Text('Hamza'),
              ),
              decoration: new BoxDecoration(color: Colors.orange),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.black,
                  child: new Text('I'),
                ),
                new CircleAvatar(
                  backgroundColor: Colors.black,
                  child: new Text('OS'),
                ),
              ],
            ),
            new ListTile(
              title: new Text('Forward'),
              trailing: new Icon(Icons.arrow_forward),
            ),
            new ListTile(
              title: new Text('Blutooth'),
              trailing: new Icon(Icons.bluetooth),
            ),
            new ListTile(
              title: new Text('Call'),
              trailing: new Icon(Icons.call),
            ),
            new ListTile(
              title: new Text('Close'),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
