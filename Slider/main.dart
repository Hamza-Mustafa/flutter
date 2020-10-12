// Slider

void main() {
  runApp(slider());
}

class slider extends StatefulWidget {
  @override
  _sliderState createState() => _sliderState();
}

class _sliderState extends State<slider> {
  double dtext = 2.0;

  void method1(value) {
    setState(() {
      dtext = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Slider App',
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text('Slider App'),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Slider(
                  value: dtext,
                  min: 1.0,
                  max: 10.0,
                  onChanged: (double dval) {
                    method1(dval);
                  }),
              new Text('value : $dtext'),
            ],
          ),
        ),
      ),
    );
  }
}
