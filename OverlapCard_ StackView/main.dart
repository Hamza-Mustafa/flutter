//Overlap Card -- Stack View

void main() {
  runApp(myStackView());
}

class myStackView extends StatefulWidget {
  @override
  _myStackViewState createState() => _myStackViewState();
}

class _myStackViewState extends State<myStackView> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Stack(
          alignment: Alignment.center,
          children: <Widget>[
            new Card(
                color: Colors.yellow,
                child: new Padding(
                  padding: const EdgeInsets.all(200.0),
                )),
            new Card(
                color: Colors.green,
                child: new Padding(
                  padding: const EdgeInsets.all(150.0),
                )),
            new Card(
                color: Colors.blue,
                child: new Padding(
                  padding: const EdgeInsets.all(100.0),
                )),
            new Card(
                color: Colors.pink,
                child: new Padding(
                  padding: const EdgeInsets.all(50.0),
                )),
            new Card(
                color: Colors.purple,
                child: new Padding(
                  padding: const EdgeInsets.all(25.0),
                )),
          ],
        ),
      ),
    );
  }
}
