// Alert Dialog

void main() {
  runApp(new MaterialApp(home: new alertDialog()));
}

class alertDialog extends StatefulWidget {
  @override
  _alertDialogState createState() => _alertDialogState();
}

class _alertDialogState extends State<alertDialog> {
  void dialog() {
    showDialog(
        context: context,
        child: new AlertDialog(
          title: new Text('Warning'),
          content: new Text('This is some sample text.'),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            dialog();
          },
          child: new Text('Activate Alert'),
        ),
      ),
    );
  }
}