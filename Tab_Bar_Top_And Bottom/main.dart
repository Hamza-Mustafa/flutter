import 'package:flutter/material.dart';
// Tab Bar Top And Bottom

void main() {
  runApp(tabBarbottomAndTop());
}

class tabBarbottomAndTop extends StatefulWidget {
  @override
  _tabBarbottomAndTopState createState() => _tabBarbottomAndTopState();
}

class _tabBarbottomAndTopState extends State<tabBarbottomAndTop>
    with SingleTickerProviderStateMixin {
  TabController _tcontrol;
  @override
  void initState() {
    _tcontrol = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('TabBar Demo'),
          bottom: new TabBar(
            controller: _tcontrol,
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.home),
              ),
              new Tab(
                icon: new Icon(Icons.supervisor_account),
              ),
              new Tab(
                icon: new Icon(Icons.close),
              ),
            ],
          ),
        ),
        body: new TabBarView(
          controller: _tcontrol,
          children: <Widget>[
            new Center(
              child: new Text('Welcome to Home'),
            ),
            new Center(
              child: new Text('Welcome to User Account'),
            ),
            new Center(
              child: new Text('Welcome to Close'),
            )
          ],
        ),

//Bottom Navigation Bar

        bottomNavigationBar: new Material(
          color: Colors.blueAccent,
          child: new TabBar(
            controller: _tcontrol,
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.home),
              ),
              new Tab(
                icon: new Icon(Icons.supervisor_account),
              ),
              new Tab(
                icon: new Icon(Icons.close),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
