import 'package:flutter/material.dart';
import 'customClass.dart';

// Custom Widget

void main() {
  runApp(application());
}

class application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Custom Class',
      home: new Scaffold(
        body: new customClass(),
      ),
    );
  }
}
