//Custom Class
import 'package:flutter/material.dart';

class customClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Container(
          color: Colors.pink,
          child: new Container(
              color: Colors.orange,
              margin: const EdgeInsets.all(15.0),
              child: new Container(
                color: Colors.yellow,
                margin: const EdgeInsets.all(15.0),
                child: new Container(
                  color: Colors.green,
                  margin: const EdgeInsets.all(15.0),
                ),
              )),
        ),
      ),
    );
  }
}
